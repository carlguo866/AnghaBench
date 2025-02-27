; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_display_rq_dlg_helpers.c_print__rq_regs_st.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/extr_display_rq_dlg_helpers.c_print__rq_regs_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"DML_RQ_DLG_CALC: =====================================\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"DML_RQ_DLG_CALC: DISPLAY_RQ_REGS_ST\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"DML_RQ_DLG_CALC:  <LUMA>\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"DML_RQ_DLG_CALC:  <CHROMA>\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"DML_RQ_DLG_CALC:    drq_expansion_mode  = 0x%0x\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"DML_RQ_DLG_CALC:    prq_expansion_mode  = 0x%0x\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"DML_RQ_DLG_CALC:    mrq_expansion_mode  = 0x%0x\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"DML_RQ_DLG_CALC:    crq_expansion_mode  = 0x%0x\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"DML_RQ_DLG_CALC:    plane1_base_address = 0x%0x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print__rq_regs_st(%struct.display_mode_lib* %0, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %1) #0 {
  %3 = alloca %struct.display_mode_lib*, align 8
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %3, align 8
  %4 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %7 = load %struct.display_mode_lib*, %struct.display_mode_lib** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @print__data_rq_regs_st(%struct.display_mode_lib* %7, i32 %9)
  %11 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %12 = load %struct.display_mode_lib*, %struct.display_mode_lib** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @print__data_rq_regs_st(%struct.display_mode_lib* %12, i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %29)
  %31 = call i32 (i8*, ...) @dml_print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dml_print(i8*, ...) #1

declare dso_local i32 @print__data_rq_regs_st(%struct.display_mode_lib*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
