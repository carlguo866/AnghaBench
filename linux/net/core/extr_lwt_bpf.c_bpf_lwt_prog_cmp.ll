; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_lwt_prog_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_lwt_prog_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_lwt_prog = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_lwt_prog*, %struct.bpf_lwt_prog*)* @bpf_lwt_prog_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_lwt_prog_cmp(%struct.bpf_lwt_prog* %0, %struct.bpf_lwt_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_lwt_prog*, align 8
  %5 = alloca %struct.bpf_lwt_prog*, align 8
  store %struct.bpf_lwt_prog* %0, %struct.bpf_lwt_prog** %4, align 8
  store %struct.bpf_lwt_prog* %1, %struct.bpf_lwt_prog** %5, align 8
  %6 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %4, align 8
  %7 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %5, align 8
  %12 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %35

16:                                               ; preds = %10, %2
  %17 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %4, align 8
  %18 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %5, align 8
  %23 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %16
  store i32 1, i32* %3, align 4
  br label %35

27:                                               ; preds = %21
  %28 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %4, align 8
  %29 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bpf_lwt_prog*, %struct.bpf_lwt_prog** %5, align 8
  %32 = getelementptr inbounds %struct.bpf_lwt_prog, %struct.bpf_lwt_prog* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcmp(i32 %30, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %26, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
