; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_print_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_print_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i8*, i64, i32, i32 (i8*, i64, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*)* @d_print_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_flush(%struct.d_print_info* %0) #0 {
  %2 = alloca %struct.d_print_info*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %2, align 8
  %3 = load %struct.d_print_info*, %struct.d_print_info** %2, align 8
  %4 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.d_print_info*, %struct.d_print_info** %2, align 8
  %7 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i8, i8* %5, i64 %8
  store i8 0, i8* %9, align 1
  %10 = load %struct.d_print_info*, %struct.d_print_info** %2, align 8
  %11 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %10, i32 0, i32 3
  %12 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %11, align 8
  %13 = load %struct.d_print_info*, %struct.d_print_info** %2, align 8
  %14 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.d_print_info*, %struct.d_print_info** %2, align 8
  %17 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.d_print_info*, %struct.d_print_info** %2, align 8
  %20 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %12(i8* %15, i64 %18, i32 %21)
  %23 = load %struct.d_print_info*, %struct.d_print_info** %2, align 8
  %24 = getelementptr inbounds %struct.d_print_info, %struct.d_print_info* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
