; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_get_real.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_get_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, %struct.read_block*)* @get_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_real(i32* %0, %struct.read_block* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.read_block*, align 8
  %5 = alloca double, align 8
  %6 = alloca double*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.read_block* %1, %struct.read_block** %4, align 8
  %7 = load %struct.read_block*, %struct.read_block** %4, align 8
  %8 = call double* @rb_read(%struct.read_block* %7, i32 8)
  store double* %8, double** %6, align 8
  %9 = load double*, double** %6, align 8
  %10 = icmp eq double* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.read_block*, %struct.read_block** %4, align 8
  %14 = call i32 @invalid_stream(i32* %12, %struct.read_block* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load double*, double** %6, align 8
  %17 = call i32 @memcpy(double* %5, double* %16, i32 8)
  %18 = load double, double* %5, align 8
  ret double %18
}

declare dso_local double* @rb_read(%struct.read_block*, i32) #1

declare dso_local i32 @invalid_stream(i32*, %struct.read_block*) #1

declare dso_local i32 @memcpy(double*, double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
