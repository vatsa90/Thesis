# -*- coding: utf-8 -*-
"""
Created on Tue Jul 12 17:25:42 2016

@author: Shrivatsa

This is a CNN code that performs the following actions:

1) Import images from the input dataset
2) Divides the set into training and test set using K fold method
3) Trains the model on the input dataset
4) Calculates the efficiency of the model using the test dataset


"""

train_data_dir = 'data/Emotion/Arousal/train'
validation_data_dir = 'data/Emotion/Arousal/Validation'
nb_train_samples = 180
nb_validation_samples = 20
nb_epoch = 50


def create_model():
        
    from keras.models import Sequential
    from keras.layers import Convolution2D, MaxPooling2D
    from keras.layers import Activation, Dropout, Flatten, Dense
    
    
    model=Sequential()
    
    model.add(Convolution2D(32,3,3,input_shape=(3,150,150)))
    model.add(Activation('relu'))
    model.add(MaxPooling2D(pool_size=(2,2)))
    
    model.add(Convolution2D(32,3,3,input_shape=(3,150,150)))
    model.add(Activation('relu'))
    model.add(MaxPooling2D(pool_size=(2,2)))
    
    model.add(Convolution2D(64,3,3,input_shape=(3,150,150)))
    model.add(Activation('relu'))
    model.add(MaxPooling2D(pool_size=(2,2)))
    model.add(Flatten())
    model.add(Dense(64))
    model.add(Activation('relu'))
    model.add(Dropout(0.5))
    model.add(Dense(1))
    model.add(Activation('sigmoid'))
    
    model.compile(loss='binary_crossentropy',
                  optimizer='rmsprop',
                  metrics=['accuracy'])
              

train_datagen = ImageDataGenerator(
        rescale=1./255,
        shear_range=0.2,
        zoom_range=0.2,
        horizontal_flip=True)
        
test_datagen = ImageDataGenerator(rescale=1./255)

train_generator = train_datagen.flow_from_directory(
        'data/Emotion/Arousal/train',  
        target_size=(150,150),  
        batch_size=32,
        class_mode='binary')
        
validation_generator = test_datagen.flow_from_directory(
        'data/Emotion/Arousal/Validation',
        target_size=(150,150),
        batch_size=32,
        class_mode='binary')

model.fit_generator(
        train_generator,
        samples_per_epoch=180,
        nb_epoch=50,
        validation_data=validation_generator,
        nb_val_samples=20)


if __name__ == "__main__":
    f=open('results.txt','w')
    import numpy as np
    from keras.preprocessing.image import load_img, img_to_array
    import os
    from PIL import Image
    import csv
    from sklearn.cross_validation import StratifiedKFold
    
    X = np.zeros(shape=(200, 3, 200, 200))
    Y = np.zeros(shape=((200, 1)))
    i = 0
    
    with open("Valence.csv") as f:
        r=csv.reader(f)
        w=[]
        
        for row in r:
            w.extend((row))
    w1=[]        
    for i in w:
        w1.append(int(i))        
    
    with open("Arousal.csv") as f1:
        r1=csv.reader(f1)
        w2=[]
        for row in r1:
            w2.extend((row))
    w3=[]        
    for i in w2:
        w3.append(int(i))        
    
    images_folder='data/pic'
    
    for path_to_image in os.listdir(images_folder):
        img = Image.open(images_folder + '/' + path_to_image).resize((200,200))
        x = img_to_array(img)
        X[i] = x
        i = i+1
        x=0
    
    
    
        
        
    from keras.preprocessing.image import ImageDataGenerator
    
    datagen=ImageDataGenerator(rotation_range=40,
                               width_shift_range=0.2,
                               vertical_shift_range=0.2,
                               rescale=1./255,
                               shear range=0.2,
                               zoom range=0.2,
                               horizontal_flip=True,
                               fill_mode='nearest')
                               
    from keras.preprocessing.image import ImageDataGenerator, array_to_img, img_to_array, load_img


    Y=w1
    n_folds = 10
    data, labels, header_info = load_data()
    skf = StratifiedKFold(Y, n_folds=n_folds, shuffle=True)

    for i, (train, test) in enumerate(skf):
            print "Running Fold", i+1, "/", n_folds
            model = None # Clearing the NN.
            model = create_model()
            train_and_evaluate_model(model, X[train], Y[train], X[test], Y[test))
