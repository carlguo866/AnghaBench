; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_version_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_version_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.kim_data_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%04X %d.%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @version_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @version_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kim_data_s*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.kim_data_s*
  store %struct.kim_data_s* %9, %struct.kim_data_s** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.kim_data_s*, %struct.kim_data_s** %5, align 8
  %12 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kim_data_s*, %struct.kim_data_s** %5, align 8
  %16 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kim_data_s*, %struct.kim_data_s** %5, align 8
  %20 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kim_data_s*, %struct.kim_data_s** %5, align 8
  %24 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %26)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
