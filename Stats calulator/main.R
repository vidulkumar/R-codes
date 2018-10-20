printmain<-function()
          { flag<-1
            while(flag==1){
            print("--------------------MAIN MENU -----------------")
            print("1 .         Descriptive anaysis                ")
            print("2 .         Predictive Analysis                ")
            print("3 .         Probability Analysis               ")
            print("4 .         Descrete Distribution functions    ")
            print("5 .         Continuous Distribution functions  ")
            print("6 .         Sample Distribution Test Statistic ")
            print("7 .         Interval Estimation                ")
            print("8 .         Non-Parametric Analysis            ")
            print("9 .         Visualizations                     ")
            print("10.         Exit                               ")
            choice<-readline(prompt="Enter your choice.......(1..10)..    ")
            switch(choice,
                '1' = printdiscriptive(),
                '2' = printpredictive(),
                '3' = printprobability(),
                '4' = printdescrete(),
                '5' = printcontinuous(),
                '6' = printsample(),
                '7' = printinterval(),
                '8' = printnon(),
                '9' = printvisualize(),
                '10' = exit()

                )
               if(choice>9)
                flag<-2
               }
            }


printdiscriptive<-function()
           { print("  1.      Mean                     ")
             print("  2.	Median                   ")
             print("  3.	Mode                     ")
             print("  4.	Variance                 ")   
             print("  5.	Standard Deviation       ")
             print("  6.	Mean Absolute Deviation  ")
             print("  7.	Range                    ")
             print("  8.	Quartiles                ")
             print("  9.	Minimum                  ")
             print("  10. 	Maximum                  ")
             print("  11.	Skewness                 ")
             print("  12.	Kurtosis                 ")
             print("  13.	Moments                  ")
		 print("  14.	Back                     ")
      	 choice<-readline(prompt="  Enter your choice................")
             switch(choice,
                '1' = {      mean1()            },
                '2' = {      median1()          },
                '3' = {      mode1()            },
                '4' = {      variance1()        },
                '5' = {      stdev1()           },
                '6' = {      mad1()             },
                '7' = {	     range1()           },
                '8' = {	     quartile()         },
                '9' = {      minimum()          },
                '10'= {      maximum()          },
                '11'= {      skewness1()        },
                '12'= {      kurtosis1()        },
                '13'= {      moments()          },
                '14' = printmain()

            )

              }
printpredictive<-function()
           { print("  1.      Correlation                 ")
             print("  2.      Multiple Linear Regression  ")
             print("  3.	Logistic Regression         ")
		 print("  4.	Back                     ")
      	 choice<-readline(prompt="  Enter your choice................")
             switch(choice,
                '1' = {      cor1()           },
                '2' = {      mlr1()           },
                '3' = {      lr1()            },
                '4' = printmain()
                    )

              }
printprobability<-function()
           { print("  1.      Permutations             ")
             print("  2.	Combinations             ")
             print("  3.	Basic Probability        ")
             print("  4.	Conditional Probability  ")   
             print("  5.	Bayes Theorem            ")
		 print("  6.	Back                     ")
      	 choice<-readline(prompt="  Enter your choice................")
             switch(choice,
                '1' = {      print(permn1())          },
                '2' = {      print(combin1())         },
                '3' = {      print(bprob())           },
                '4' = {      print(cprob())            },
                '5' = {      print(bayestheoram())    },
                '6' = printmain()

            )
              }
printdescrete<-function()
           { print("  1.      Uniform                    ")
             print("  2.	Bernoulli                  ")
             print("  3.	Binomial                   ")
             print("  4.	Geometric                  ")   
             print("  5.	Hyper-geometric            ")
             print("  6.	Negative Binomial          ")
             print("  7.	Poisson                    ")
             print("  8.	Multinomial                ")
             print("  9.	Multivariate Hypergeometric")
		 print("  10.	Back                     ")
      	 choice<-readline(prompt="  Enter your choice................")
             switch(choice,
                '1' = {      print(unifdist())         },
                '2' = {      print(berndist())         },
                '3' = {      print(binodist())         },
                '4' = {      print(geomdist())         },
                '5' = {      print(hypedist())         },
                '6' = {      print(negadist())         },
                '7' = {	     print(poisdist())         },
                '8' = {	     print(multdist())         },
                '9' = {      print(mulhdist())         },
                '10' = printmain()

            )

              }
printcontinuous<-function()
           { print("  1.      Uniform                  ")
             print("  2.	Normal                   ")
             print("  3.	Bivariate Normal         ")
             print("  4.	Gamma                    ")   
             print("  5.	Exponential              ")
		 print("  6.	Back                     ")
      	 choice<-readline(prompt="  Enter your choice................")
             switch(choice,
                '1' = {      print(conunif())        },
                '2' = {      print(normdist())       },
                '3' = {      print(binorm())         },
                '4' = {      print(gamadist())},
                '5' = {      print(expdist())        },
                '6' = printmain()

            )

              }


printsample<-function()
           { print("  1.      Chi-Square               ")
             print("  2.	Student t-test           ")
             print("  3.	F-test                   ")
             print("  4.	Z-test                   ")   
             print("  5.	Shapiro Wilk test        ")
		 print("  6.	Back                     ")
      	 choice<-readline(prompt="  Enter your choice................")
             switch(choice,
                '1' = {      print(chisq())           },
                '2' = {      print(ttest())           },
                '3' = {      print(ftest())           },
                '4' = {      print(ztest())           },
                '5' = {      print(swtest())          },
                '6' = printmain()

            )

              }
printinterval<-function()
           { print("  1.      Estimation of Means                        ")
             print("  2.	Estimation of Differences in Means         ")
             print("  3.	Estimation of Proportions                  ")
             print("  4.	Estimation of Differences in Proportions   ")   
             print("  5.	Estimation of Variances                    ")
             print("  6.	Estimation of Ratio of Two Variances       ")
             print("  7.	Back                                       ")
      	 choice<-readline(prompt="  Enter your choice................")
             switch(choice,
                '1' = {      print(estoMean())        },
                '2' = {      print(estoDiffMean())    },
                '3' = {      print(estoProp())        },
                '4' = {      print(estoDiffProp())    },
                '5' = {      print(estoVar())         },
                '6' = {      print(estoRatoVar())     },
                '7' = printmain()

            )

              }
printnon<-function()
           { print("  1.      Sign Test                 ")
             print("  2.	Wilcoxon Signed-Rank test ")
             print("  3.	Mann-Whitney Test         ")
             print("  4.	Kruskal-Wallis Test       ")
		 print("  5.	Back                     ")
      	 choice<-readline(prompt="  Enter your choice................")
             switch(choice,
                '1' = {      print(signtest())        },
                '2' = {      print(wilcoxtest())      },
                '3' = {      print(manntest())        },
                '4' = {      print(krusktest())       },
                '5' = printmain()

            )

              }

printvisualize<-function()
           { 
             print("  1.      Histograms               ")
             print("  2.	Line Graph               ")
             print("  3.	Bar Graph                ")
             print("  4.	Pie Chart                ")   
             print("  5.	Scatter plot             ")
             print("  6.	Box-plot                 ")
             print("  7.	q-q plot                 ")
             print("  8.	Stem-leaf plot           ")
             print("  9.	Pareto Chart             ")
		 print("  10.	Back                     ")
      	 choice<-readline(prompt="  Enter your choice................")
             switch(choice,
                '1' = {      print(histo())           },
                '2' = {      print(lineg())           },
                '3' = {      print(bargraph())        },
                '4' = {      print(piechart())        },
                '5' = {      print(scatplot())        },
                '6' = {      print(box_plot())        },
                '7' = {	     print(q_qplot())          },
                '8' = {	     print(stemplot())        },
                '9' = {      print(paretochart())     },
                '10' = printmain()

            )
            

              }
