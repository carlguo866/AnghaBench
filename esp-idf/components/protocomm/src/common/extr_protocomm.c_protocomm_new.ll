; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/common/extr_protocomm.c_protocomm_new.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/common/extr_protocomm.c_protocomm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error allocating protocomm\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @protocomm_new() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = call i64 @calloc(i32 1, i32 4)
  %4 = inttoptr i64 %3 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 @ESP_LOGE(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %1, align 8
  br label %15

10:                                               ; preds = %0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @SLIST_INIT(i32* %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %1, align 8
  br label %15

15:                                               ; preds = %10, %7
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  ret %struct.TYPE_3__* %16
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @SLIST_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
