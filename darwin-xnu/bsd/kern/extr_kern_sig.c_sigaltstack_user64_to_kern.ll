; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_sigaltstack_user64_to_kern.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_sigaltstack_user64_to_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user64_sigaltstack = type { i32, i32, i32 }
%struct.kern_sigaltstack = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.user64_sigaltstack*, %struct.kern_sigaltstack*)* @sigaltstack_user64_to_kern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigaltstack_user64_to_kern(%struct.user64_sigaltstack* %0, %struct.kern_sigaltstack* %1) #0 {
  %3 = alloca %struct.user64_sigaltstack*, align 8
  %4 = alloca %struct.kern_sigaltstack*, align 8
  store %struct.user64_sigaltstack* %0, %struct.user64_sigaltstack** %3, align 8
  store %struct.kern_sigaltstack* %1, %struct.kern_sigaltstack** %4, align 8
  %5 = load %struct.user64_sigaltstack*, %struct.user64_sigaltstack** %3, align 8
  %6 = getelementptr inbounds %struct.user64_sigaltstack, %struct.user64_sigaltstack* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.kern_sigaltstack*, %struct.kern_sigaltstack** %4, align 8
  %9 = getelementptr inbounds %struct.kern_sigaltstack, %struct.kern_sigaltstack* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.user64_sigaltstack*, %struct.user64_sigaltstack** %3, align 8
  %11 = getelementptr inbounds %struct.user64_sigaltstack, %struct.user64_sigaltstack* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.kern_sigaltstack*, %struct.kern_sigaltstack** %4, align 8
  %14 = getelementptr inbounds %struct.kern_sigaltstack, %struct.kern_sigaltstack* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.user64_sigaltstack*, %struct.user64_sigaltstack** %3, align 8
  %16 = getelementptr inbounds %struct.user64_sigaltstack, %struct.user64_sigaltstack* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.kern_sigaltstack*, %struct.kern_sigaltstack** %4, align 8
  %19 = getelementptr inbounds %struct.kern_sigaltstack, %struct.kern_sigaltstack* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
