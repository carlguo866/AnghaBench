; ModuleID = '/home/carl/AnghaBench/oss-fuzz/projects/libtsm/extr_libtsm_fuzzer.c_terminal_write_fn.c'
source_filename = "/home/carl/AnghaBench/oss-fuzz/projects/libtsm/extr_libtsm_fuzzer.c_terminal_write_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsm_vte = type { i32 }

@terminal_write_fn.out = internal global [4096 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsm_vte*, i8*, i64, i8*)* @terminal_write_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminal_write_fn(%struct.tsm_vte* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.tsm_vte*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.tsm_vte* %0, %struct.tsm_vte** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  br label %9

9:                                                ; preds = %13, %4
  %10 = load i64, i64* %7, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %7, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = load i64, i64* %7, align 8
  %19 = urem i64 %18, 4096
  %20 = getelementptr inbounds [4096 x i8], [4096 x i8]* @terminal_write_fn.out, i64 0, i64 %19
  store i8 %17, i8* %20, align 1
  br label %9

21:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
