; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_lex_fixed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_sbgdec.c_lex_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbg_parser = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbg_parser*, i8*, i32)* @lex_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lex_fixed(%struct.sbg_parser* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbg_parser*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.sbg_parser* %0, %struct.sbg_parser** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.sbg_parser*, %struct.sbg_parser** %5, align 8
  %9 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sbg_parser*, %struct.sbg_parser** %5, align 8
  %12 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load %struct.sbg_parser*, %struct.sbg_parser** %5, align 8
  %19 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @memcmp(i32 %20, i8* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %3
  store i32 0, i32* %4, align 4
  br label %32

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.sbg_parser*, %struct.sbg_parser** %5, align 8
  %29 = getelementptr inbounds %struct.sbg_parser, %struct.sbg_parser* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 4
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %26, %25
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
