; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_linear.c_linear_get_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libsamplerate/extr_src_linear.c_linear_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SRC_LINEAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Linear Interpolator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @linear_get_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @SRC_LINEAR, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %9

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i8*, i8** %2, align 8
  ret i8* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
