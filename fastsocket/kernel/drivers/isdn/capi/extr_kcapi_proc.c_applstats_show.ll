; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_kcapi_proc.c_applstats_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_kcapi_proc.c_applstats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.capi20_appl = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"%u %lu %lu %lu %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @applstats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applstats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.capi20_appl*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.capi20_appl**
  %9 = load %struct.capi20_appl*, %struct.capi20_appl** %8, align 8
  store %struct.capi20_appl* %9, %struct.capi20_appl** %6, align 8
  %10 = load %struct.capi20_appl*, %struct.capi20_appl** %6, align 8
  %11 = icmp ne %struct.capi20_appl* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = load %struct.capi20_appl*, %struct.capi20_appl** %6, align 8
  %16 = getelementptr inbounds %struct.capi20_appl, %struct.capi20_appl* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.capi20_appl*, %struct.capi20_appl** %6, align 8
  %19 = getelementptr inbounds %struct.capi20_appl, %struct.capi20_appl* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.capi20_appl*, %struct.capi20_appl** %6, align 8
  %22 = getelementptr inbounds %struct.capi20_appl, %struct.capi20_appl* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.capi20_appl*, %struct.capi20_appl** %6, align 8
  %25 = getelementptr inbounds %struct.capi20_appl, %struct.capi20_appl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.capi20_appl*, %struct.capi20_appl** %6, align 8
  %28 = getelementptr inbounds %struct.capi20_appl, %struct.capi20_appl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %26, i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %13, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
