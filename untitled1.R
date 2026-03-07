temp_c <- c(18, 19, 20, 21, 22, 23, 24)
absorption_coeff <- c(1438, 1411, 1385, 1360, 1336, 1313, 1290) # umol L^-1 atm^-1
water_sat_pressure <- c(0.0204, 0.0217, 0.0231, 0.0246, 0.0261, 0.0277, 0.0295) # atm

pO2 <- (1 - water_sat_pressure) * 0.21


c_o2 <- absorption_coeff * pO2


table_a_results <- data.frame(
  Temp_C = temp_c,
  A_O2 = absorption_coeff,
  P_H2O = water_sat_pressure,
  P_O2_atm = round(pO2, 4),
  C_O2_umol_L = round(c_o2, 2)
)

table_a_results
