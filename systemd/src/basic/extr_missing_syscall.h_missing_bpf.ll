; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_missing_syscall.h_missing_bpf.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_missing_syscall.h_missing_bpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@__NR_bpf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.bpf_attr*, i64)* @missing_bpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @missing_bpf(i32 %0, %union.bpf_attr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.bpf_attr*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %union.bpf_attr* %1, %union.bpf_attr** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @ENOSYS, align 4
  store i32 %7, i32* @errno, align 4
  ret i32 -1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
