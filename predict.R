predictions <- predict(fit.lda, validation)
confusionMatrix(predictions, validation$Species)
