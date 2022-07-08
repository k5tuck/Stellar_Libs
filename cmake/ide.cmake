# ---------------------------------------------------------------------------------------
# Header Support For IDEs
# ---------------------------------------------------------------------------------------
set(STELLARLIBS_HEADERS_DIR "${CMAKE_CURRENT_LIST_DIR}/../include")

file(GLOB STELLARLIBS_MAIN_HEADERS "${STELLARLIBS_HEADERS_DIR}/stellarlibsclassical/*.hpp")
file(GLOB STELLARLIBS_AI_HEADERS "${STELLARLIBS_HEADERS_DIR}/stellarlibs/classical/ai_ml/*.hpp")
file(GLOB STELLARLIBS_MATH_HEADERS "${STELLARLIBS_HEADERS_DIR}/stellarlibs/classical/math/*.hpp")
file(GLOB STELLARLIBS_SCIENCE_HEADERS "${STELLARLIBS_HEADERS_DIR}/stellarlibs/classical/science/*.hpp")
file(GLOB STELLARLIBS_ROBOTICS_HEADERS "${STELLARLIBS_HEADERS_DIR}/stellarlibs/classical/robotics/*.hpp")
file(GLOB STELLARLIBS_TELECOM_HEADERS "${STELLARLIBS_HEADERS_DIR}/stellarlibs/classical/telecom/*.hpp")
file(GLOB STELLARLIBS_MEDICAL_HEADERS "${STELLARLIBS_HEADERS_DIR}/stellarlibs/classical/medical/*.hpp")

set(STELLARLIBS_ALL_HEADERS ${STELLARLIBS_MAIN_HEADERS} ${STELLARLIBS_AI_HEADERS} ${STELLARLIBS_MATH_HEADERS} ${STELLARLIBS_SCIENCE_HEADERS} ${STELLARLIBS_ROBOTICS_HEADERS} ${STELLARLIBS_TELECOM_HEADERS} ${STELLARLIBS_MEDICAL_HEADERS})


source_group("Header Files\\stellarlibs\\classical" FILES ${STELLARLIBS_MAIN_HEADERS})
source_group("Header Files\\stellarlibs\\classical\\ai_ml" FILES ${STELLARLIBS_AI_HEADERS})
source_group("Header Files\\stellarlibs\\classical\\math" FILES ${STELLARLIBS_MATH_HEADERS})
source_group("Header Files\\stellarlibs\\classical\\science" FILES ${STELLARLIBS_SCIENCE_HEADERS})
source_group("Header Files\\stellarlibs\\classical\\robotics" FILES ${STELLARLIBS_ROBOTICS_HEADERS})
source_group("Header Files\\stellarlibs\\classical\\telecom" FILES ${STELLARLIBS_TELECOM_HEADERS})
source_group("Header Files\\stellarlibs\\classical\\medical" FILES ${STELLARLIBS_MEDICAL_HEADERS})

# ------------------------------- TEMPORARY ----------------------------------

file(GLOB STELLARLIBS_AI_SOURCES "${STELLARLIBS_HEADERS_DIR}/stellarlibs/classical/ai_ml/cpp_files/*.cpp")
file(GLOB STELLARLIBS_MATH_SOURCES "${STELLARLIBS_HEADERS_DIR}/stellarlibs/classical/math/cpp_files/*.cpp")
file(GLOB STELLARLIBS_SCIENCE_SOURCES "${STELLARLIBS_HEADERS_DIR}/stellarlibs/classical/science/cpp_files/*.cpp")
file(GLOB STELLARLIBS_ROBOTICS_SOURCES "${STELLARLIBS_HEADERS_DIR}/stellarlibs/classical/robotics/cpp_files/*.cpp")
file(GLOB STELLARLIBS_TELECOM_SOURCES "${STELLARLIBS_HEADERS_DIR}/stellarlibs/classical/telecom/cpp_files/*.cpp")
file(GLOB STELLARLIBS_MEDICAL_SOURCES "${STELLARLIBS_HEADERS_DIR}/stellarlibs/classical/medical/cpp_files/*.cpp")

set(STELLARLIBS_SOURCE_FILES ${STELLARLIBS_AI_SOURCES} ${STELLARLIBS_MATH_SOURCES} ${STELLARLIBS_SCIENCE_SOURCES} ${STELLARLIBS_ROBOTICS_SOURCES} ${STELLARLIBS_TELECOM_SOURCES} ${STELLARLIBS_MEDICAL_SOURCES})
# ------------------------------- TEMPORARY ----------------------------------