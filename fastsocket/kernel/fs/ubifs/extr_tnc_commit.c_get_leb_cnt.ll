; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_get_leb_cnt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc_commit.c_get_leb_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32)* @get_leb_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_leb_cnt(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %12, %15
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %25, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @DIV_ROUND_UP(i32 %30, i32 %31)
  ret i32 %32
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
