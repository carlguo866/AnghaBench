; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_inp_peek.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_inp_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32*, i64, i64, i32, {}* }

@UD_EOI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"byte expected, eoi received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*)* @inp_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inp_peek(%struct.ud* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ud*, align 8
  %4 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %3, align 8
  %5 = load %struct.ud*, %struct.ud** %3, align 8
  %6 = getelementptr inbounds %struct.ud, %struct.ud* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %1
  %10 = load %struct.ud*, %struct.ud** %3, align 8
  %11 = getelementptr inbounds %struct.ud, %struct.ud* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = load %struct.ud*, %struct.ud** %3, align 8
  %16 = getelementptr inbounds %struct.ud, %struct.ud* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ud*, %struct.ud** %3, align 8
  %19 = getelementptr inbounds %struct.ud, %struct.ud* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load %struct.ud*, %struct.ud** %3, align 8
  %24 = getelementptr inbounds %struct.ud, %struct.ud* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ud*, %struct.ud** %3, align 8
  %27 = getelementptr inbounds %struct.ud, %struct.ud* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %2, align 4
  br label %66

31:                                               ; preds = %14
  br label %60

32:                                               ; preds = %9
  %33 = load %struct.ud*, %struct.ud** %3, align 8
  %34 = getelementptr inbounds %struct.ud, %struct.ud* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @UD_EOI, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.ud*, %struct.ud** %3, align 8
  %40 = getelementptr inbounds %struct.ud, %struct.ud* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %2, align 4
  br label %66

42:                                               ; preds = %32
  %43 = load %struct.ud*, %struct.ud** %3, align 8
  %44 = getelementptr inbounds %struct.ud, %struct.ud* %43, i32 0, i32 5
  %45 = bitcast {}** %44 to i32 (%struct.ud*)**
  %46 = load i32 (%struct.ud*)*, i32 (%struct.ud*)** %45, align 8
  %47 = load %struct.ud*, %struct.ud** %3, align 8
  %48 = call i32 %46(%struct.ud* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @UD_EOI, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.ud*, %struct.ud** %3, align 8
  %54 = getelementptr inbounds %struct.ud, %struct.ud* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ud*, %struct.ud** %3, align 8
  %56 = getelementptr inbounds %struct.ud, %struct.ud* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %2, align 4
  br label %66

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59, %31
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.ud*, %struct.ud** %3, align 8
  %63 = getelementptr inbounds %struct.ud, %struct.ud* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.ud*, %struct.ud** %3, align 8
  %65 = call i32 @UDERR(%struct.ud* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %61, %51, %38, %22
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @UDERR(%struct.ud*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
