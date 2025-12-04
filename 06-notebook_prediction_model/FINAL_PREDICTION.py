"""
Import Section programs
"""
"""import tensorflow as tf"""
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np
from sklearn.neural_network import MLPClassifier
from sklearn.model_selection import train_test_split
from  seaborn import kdeplot 


"""
Import Section DataSet
"""
data = pd.read_csv(r'C:\Users\fabiodomingues\.spyder-py3\FINAL_PRED\BASE_DATASET_4.csv', delimiter=";")


"""
ClusteringSection
"""



"""
1 -> Creating Base DataFrame (Reload Data)
"""

    
# creating new dataframe from BusEntries column
bus_ds = data[['StopName','HourIntervals','Date','BusEntries','Hours','Time','DayofWeek','FlagEvent','FlagMorning'
               ,'FlagAfternoon','FlagEvening','FlagWeekend','FlagRushHour','FlagEventPeak','CountGiraStops'
               ,'MarathonPathFlag','CountJams','MeanSpeed' ,'CountTrainStops','CountMetroStops','Temperature'
               ,'Humidity','Precipitation','Sun','WindSpeed','WindCardinal','ContagemdeCarreiras','ContagemdeParagens']]


"""
1.1 -> Check Multicolinearity
"""
from statsmodels.stats.outliers_influence import variance_inflation_factor 
 
# Menor que 5 (Conservador)
bus_ds_VIF = bus_ds[['DayofWeek','FlagEvent','FlagMorning','FlagAfternoon','FlagWeekend','FlagRushHour','FlagEventPeak','CountGiraStops'
               ,'MarathonPathFlag','CountJams','MeanSpeed' ,'CountTrainStops','CountMetroStops'
               ,'Precipitation','Sun','WindSpeed','ContagemdeCarreiras']]


VIF_DATA = pd.DataFrame() 
VIF_DATA["feature"] = bus_ds_VIF.columns 


VIF_DATA["VIF"] = [variance_inflation_factor(bus_ds_VIF.values, i) 
                     for i in range(len(bus_ds_VIF.columns))] 
print(VIF_DATA)



"""
2 -> Define inputs and outputs (drop NA, split datasets for the 2 events and extract legend)
"""

# dropping NAs
bus_ds = bus_ds.dropna() 
bus_ds['HourIntervals'] = pd.to_datetime(bus_ds['HourIntervals'])
bus_ds = bus_ds.set_index('HourIntervals')


# variables

X = bus_ds_VIF

Y = data[['BusEntries']]



"""
2.1 -> Apply feature selection
"""

from sklearn.linear_model import Ridge
from sklearn.feature_selection import RFECV
estimator = Ridge(alpha=1.0)
selector = RFECV(estimator, step=1, cv=5)
selector = selector.fit(X, Y)
selector.support_


for i in range(X.shape[1]):
	print('Column: %d, Selected %s, Rank: %.3f' % (i, selector.support_[i], selector.ranking_[i]))

import matplotlib.pyplot as plt
plt.figure(figsize=(12,6))
plt.xlabel('Number of features selected')
plt.ylabel('Cross validation score (nb of correct classifications)')
plt.plot(range(1, len(selector.grid_scores_) + 1), selector.grid_scores_, color = "#5C1BFF")
plt.show()


"""
2.2 -> Selected DataSet
"""



X = bus_ds[['FlagEvent','StopName','FlagMorning','FlagAfternoon','FlagWeekend','FlagRushHour','FlagEventPeak','CountGiraStops','MarathonPathFlag','CountJams','MeanSpeed','CountTrainStops','CountMetroStops','Precipitation','Sun','WindSpeed','ContagemdeCarreiras']]

Y = data[['BusEntries','HourIntervals','StopName']]

kdeplot(data=Y['BusEntries'], color = "#5C1BFF")

"""
Y = pd.DataFrame(Y) 
Y.rename({0: 'BusEntries'}, axis=1, inplace=True)
"""

X_train, X_test, y_train, y_test = train_test_split(X, Y, test_size=0.25,stratify = X[['FlagEvent','StopName']])
"""
from sklearn.preprocessing import PowerTransformer
PT = PowerTransformer(method='yeo-johnson', standardize=False)
y_train[['BusEntries']] = PT.fit_transform(y_train[['BusEntries']])
y_test[['BusEntries']] = PT.transform(y_test[['BusEntries']])
"""
"""
from sklearn.preprocessing import StandardScaler
scaler = StandardScaler()
y_train[['BusEntries']] = scaler.fit_transform(y_train[['BusEntries']])
y_test[['BusEntries']] = scaler.transform(y_test[['BusEntries']])
"""

bus_ds_legend = y_test[['HourIntervals','StopName']]

bus_ds_legend.to_csv(r'C:\Users\fabiodomingues\.spyder-py3\FINAL_PRED\legenda_7.csv', encoding="utf-8")


X_train.drop('FlagEvent',axis = 1,inplace = True)
X_test.drop('FlagEvent',axis = 1,inplace = True)
X_train.drop('StopName',axis = 1,inplace = True)
X_test.drop('StopName',axis = 1,inplace = True)
y_train.drop('HourIntervals',axis = 1,inplace = True)
y_test.drop('HourIntervals',axis = 1,inplace = True)
y_train.drop('StopName',axis = 1,inplace = True)
y_test.drop('StopName',axis = 1,inplace = True)




"""
3.1 -> Correlation Matrix
"""

corr_var = pd.DataFrame(bus_ds).drop(['StopName'], axis = 1)
corrMatrix = corr_var.corr(method ='pearson')
print (corrMatrix)

import seaborn as sn
import matplotlib.pyplot as plt

sn.set(style="white")

#Generate a mask for the upper triangle
mask = np.zeros_like(corrMatrix, dtype=np.bool)
mask[np.triu_indices_from(mask)] = True

# Set up the matplotlib figure
f, ax = plt.subplots(figsize=(11, 9))

# Generate a custom diverging colormap
cmap = sn.diverging_palette(220, 10, as_cmap=True)

sn.heatmap(corrMatrix, mask=mask, cmap=cmap, vmax=1,vmin=-1, center=0,
square=True, linewidths=.5, cbar_kws={"shrink": .5})




"""
4 -> Split Dataset Section test different models
"""
from sklearn.model_selection import TimeSeriesSplit
from sklearn.linear_model import LinearRegression
from sklearn.neural_network import MLPRegressor
from sklearn.neighbors  import KNeighborsRegressor
from sklearn.ensemble   import RandomForestRegressor
from sklearn.svm import SVR
from sklearn.model_selection  import cross_val_score
"""
from sklearn import preprocessing
X_scaled = preprocessing.scale(X_train)
"""
models = []
models.append(('LR', LinearRegression()))
models.append(('NN', MLPRegressor(max_iter= 200,learning_rate_init = 0.001)))  #neural network
models.append(('KNN', KNeighborsRegressor())) 
models.append(('RF', RandomForestRegressor(n_estimators = 20,max_features = "sqrt",max_depth = 10))) # Ensemble method - collection of many decision trees
#models.append(('SVR', SVR(gamma='auto'))) # kernel = linear
# Evaluate each model in turn
results = []
names = []
for name, model in models:
    # TimeSeries Cross validation
 tscv = TimeSeriesSplit(n_splits=5)
    
 cv_results = cross_val_score(model, X_train, y_train, cv=tscv, scoring= 'neg_root_mean_squared_error')
 results.append(cv_results)
 names.append(name)
 print('%s: %f (%f)' % (name, cv_results.mean(), cv_results.std()))
 
  
# Compare Algorithms
box=plt.boxplot(results, labels=names,patch_artist=True)

colors = ["#5C1BFF","#FF26B5","#118DFF","#5EEEFF"]
for patch, color in zip(box['boxes'], colors):
    patch.set_facecolor(color)
    
plt.title('Algorithm Comparison')
plt.show()



"""
5 -> Define Scorer
"""

from sklearn.metrics import make_scorer

def rmse(actual, predict):
    predict = np.array(predict)
    actual = np.array(actual)
    distance = predict - actual
    square_distance = distance ** 2
    mean_square_distance = square_distance.mean()
    score = np.sqrt(mean_square_distance)
    return score

rmse_score = make_scorer(rmse, greater_is_better = False)


"""
6 -> Train selected model
"""
### --> RandomForestRegressor
from sklearn.model_selection import GridSearchCV
model = RandomForestRegressor()
param_search = { 
    'n_estimators': [1000], #50 era 20,50,100
    'max_features': ['log2'], # Auto era 'Auto','sqrt', 'log2'
    'max_depth' : [i for i in range(9)] #9 a 10 era 5 a 15
    #,'warm_start' : [True,False]
}
tscv = TimeSeriesSplit(n_splits=5)
gsearch = GridSearchCV(estimator=model, cv=tscv, param_grid=param_search, scoring = 'r2')
gsearch.fit(X_train, y_train)
best_score = gsearch.best_score_
best_model = gsearch.best_estimator_


"""
8 -> Test Model
"""

y_true = y_test.values
y_pred = best_model.predict(X_test)
"""
y_true2 = y_test.values
y_pred2 = best_model.predict(X_test)
"""
"""
y_true = scaler.inverse_transform(y_true2)
y_pred = scaler.inverse_transform(y_pred2)
"""


def percentage_error(actual, predicted):
    res = np.empty(actual.shape)
    for j in range(actual.shape[0]):
        if actual[j] != 0:
            res[j] = (actual[j] - predicted[j]) / actual[j]
        else:
            res[j] = predicted[j] / np.mean(actual)
    return res
def mapecalc(y_true, y_pred): 
    return np.mean(np.abs(percentage_error(np.asarray(y_true), np.asarray(y_pred)))) * 100

import sklearn.metrics as metrics
def regression_results(y_true, y_pred):
    # Regression metrics
    explained_variance=metrics.explained_variance_score(y_true, y_pred)
    mse=metrics.mean_squared_error(y_true, y_pred) 
    #mean_squared_log_error=metrics.mean_squared_log_error(y_true, y_pred)
    median_absolute_error=metrics.median_absolute_error(y_true, y_pred)
    mape=mapecalc(y_true, y_pred)
    
    print('explained_variance: ', round(explained_variance,4))    
    #print('mean_squared_log_error: ', round(mean_squared_log_error,4))
    print('MAE: ', round(median_absolute_error,4))
    print('MAPE: ', round(mape,4))
    print('MSE: ', round(mse,4))
    print('RMSE: ', round(np.sqrt(mse),4))


regression_results(y_true, y_pred)



  
exp_file = pd.concat([pd.DataFrame(y_true),pd.Series(y_pred)], axis=1)

exp_file.to_csv(r'C:\Users\fabiodomingues\.spyder-py3\FINAL_PRED\results_6.csv')


"""
8 -> Evaluate Model Distribution
"""

results = pd.read_csv(r'C:\Users\fabiodomingues\.spyder-py3\FINAL_PRED\distribution_6.csv', delimiter=";")

kdeplot(data=results['Real Diff'], color = "#5C1BFF")