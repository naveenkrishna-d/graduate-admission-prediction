FLAGS= flags(
  flag_numeric("learning_rate", 0.01),
  flag_numeric("units1", 256),
  flag_numeric('units2', 128),
  flag_numeric("units3", 64),
  flag_numeric("batch_size", 32),
  flag_numeric("dropout1", 0.1),
  flag_numeric("dropout2", 0.1),
  flag_numeric("epochs", 20),
  flag_string("activation1", "relu"),
  flag_string("activation2", "relu"),
  flag_string("activation3", "relu")
)

model <- keras_model_sequential() %>%
  layer_dense(units = FLAGS$units1, activation = FLAGS$activation1,
              input_shape = dim(train_X)[2]) %>%
  layer_dense(units = FLAGS$units2, activation = FLAGS$activation2) %>%
  layer_dropout(FLAGS$dropout1) %>%
  layer_dense(units = FLAGS$units3, activation = FLAGS$activation3) %>%
  layer_dropout(FLAGS$dropout2) %>%
  layer_dense(units = 1)

opt= optimizer_adam(learning_rate=FLAGS$learning_rate)
model %>% compile(
  loss = "mse",
  optimizer = opt )

history <- model %>% fit(train_X,
                         train_y,
                         batch_size=FLAGS$batch_size,
                         epochs = FLAGS$epochs, 
                         verbose=2,
                         validation_data=list(val_X, val_y)
)