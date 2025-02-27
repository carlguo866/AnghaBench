; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_format_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_format_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7842_format_info = type { i64 }
%struct.adv7842_state = type { i32 }

@adv7842_formats = common dso_local global %struct.adv7842_format_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.adv7842_format_info* (%struct.adv7842_state*, i64)* @adv7842_format_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.adv7842_format_info* @adv7842_format_info(%struct.adv7842_state* %0, i64 %1) #0 {
  %3 = alloca %struct.adv7842_format_info*, align 8
  %4 = alloca %struct.adv7842_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.adv7842_state* %0, %struct.adv7842_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.adv7842_format_info*, %struct.adv7842_format_info** @adv7842_formats, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.adv7842_format_info* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = load %struct.adv7842_format_info*, %struct.adv7842_format_info** @adv7842_formats, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.adv7842_format_info, %struct.adv7842_format_info* %13, i64 %15
  %17 = getelementptr inbounds %struct.adv7842_format_info, %struct.adv7842_format_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load %struct.adv7842_format_info*, %struct.adv7842_format_info** @adv7842_formats, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.adv7842_format_info, %struct.adv7842_format_info* %22, i64 %24
  store %struct.adv7842_format_info* %25, %struct.adv7842_format_info** %3, align 8
  br label %31

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %7

30:                                               ; preds = %7
  store %struct.adv7842_format_info* null, %struct.adv7842_format_info** %3, align 8
  br label %31

31:                                               ; preds = %30, %21
  %32 = load %struct.adv7842_format_info*, %struct.adv7842_format_info** %3, align 8
  ret %struct.adv7842_format_info* %32
}

declare dso_local i32 @ARRAY_SIZE(%struct.adv7842_format_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
