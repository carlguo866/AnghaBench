; ModuleID = '/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_trailer.c'
source_filename = "/home/carl/AnghaBench/git/extr_wt-status.c_wt_longstatus_print_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i32 }

@WT_STATUS_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @wt_longstatus_print_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wt_longstatus_print_trailer(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %3 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %4 = load i32, i32* @WT_STATUS_HEADER, align 4
  %5 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %6 = call i32 @color(i32 %4, %struct.wt_status* %5)
  %7 = call i32 @status_printf_ln(%struct.wt_status* %3, i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @status_printf_ln(%struct.wt_status*, i32, i8*, i8*) #1

declare dso_local i32 @color(i32, %struct.wt_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
