# ---------------------------------------------------------------------------------------
# Header Support For IDEs
# ---------------------------------------------------------------------------------------
set(STELLARLIBS_HEADERS_DIR "${CMAKE_CURRENT_LIST_DIR}/../include")

file(GLOB STELLARLIBS_MAIN_HEADERS "${STELLARLIBS_HEADERS_DIR}/stellarlibs/*.hpp")
file(GLOB STELLARLIBS_AI_HEADERS "${STELLARLIBS_HEADERS_DIR}/stellarlibs/ai_ml/*.hpp")
file(GLOB STELLARLIBS_MATH_HEADERS "${STELLARLIBS_HEADERS_DIR}/stellarlibs/math/*.hpp")
file(GLOB STELLARLIBS_SCIENCE_HEADERS "${STELLARLIBS_HEADERS_DIR}/stellarlibs/science/*.hpp")
file(GLOB STELLARLIBS_ROBOTICS_HEADERS "${STELLARLIBS_HEADERS_DIR}/stellarlibs/robotics/*.hpp")
file(GLOB STELLARLIBS_TELECOM_HEADERS "${STELLARLIBS_HEADERS_DIR}/stellarlibs/telecom/*.hpp")

set(STELLARLIBS_ALL_HEADERS ${STELLARLIBS_MAIN_HEADERS} ${STELLARLIBS_AI_HEADERS} ${STELLARLIBS_MATH_HEADERS} ${STELLARLIBS_SCIENCE_HEADERS} ${STELLARLIBS_ROBOTICS_HEADERS} ${STELLARLIBS_TELECOM_HEADERS})

source_group("Header Files\\stellarlibs" FILES ${STELLARLIBS_MAIN_HEADERS})
source_group("Header Files\\stellarlibs\\ai_ml" FILES ${STELLARLIBS_AI_HEADERS})
source_group("Header Files\\stellarlibs\\math" FILES ${STELLARLIBS_MATH_HEADERS})
source_group("Header Files\\stellarlibs\\science" FILES ${STELLARLIBS_SCIENCE_HEADERS})
source_group("Header Files\\stellarlibs\\robotics" FILES ${STELLARLIBS_ROBOTICS_HEADERS})
source_group("Header Files\\stellarlibs\\telecom" FILES ${STELLARLIBS_TELECOM_HEADERS})