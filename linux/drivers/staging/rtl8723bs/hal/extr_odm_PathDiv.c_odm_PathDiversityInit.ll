; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_PathDiv.c_odm_PathDiversityInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_PathDiv.c_odm_PathDiversityInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ODM_BB_PATH_DIV = common dso_local global i32 0, align 4
@ODM_COMP_PATH_DIV = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Return: Not Support PathDiv\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_PathDiversityInit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ODM_BB_PATH_DIV, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = load i32, i32* @ODM_COMP_PATH_DIV, align 4
  %15 = load i32, i32* @ODM_DBG_LOUD, align 4
  %16 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_3__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
