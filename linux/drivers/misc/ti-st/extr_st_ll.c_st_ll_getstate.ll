; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_ll.c_st_ll_getstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_ll.c_st_ll_getstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_data_s = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c" returning state %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @st_ll_getstate(%struct.st_data_s* %0) #0 {
  %2 = alloca %struct.st_data_s*, align 8
  store %struct.st_data_s* %0, %struct.st_data_s** %2, align 8
  %3 = load %struct.st_data_s*, %struct.st_data_s** %2, align 8
  %4 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load %struct.st_data_s*, %struct.st_data_s** %2, align 8
  %8 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  ret i64 %9
}

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
