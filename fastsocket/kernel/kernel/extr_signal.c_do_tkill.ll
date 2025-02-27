; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_do_tkill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_do_tkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siginfo = type { i32, i32, i32, i32, i64 }

@SI_TKILL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @do_tkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_tkill(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.siginfo, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = bitcast %struct.siginfo* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 24, i1 false)
  %9 = load i32, i32* %6, align 4
  %10 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %7, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @SI_TKILL, align 4
  %13 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %7, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @current, align 4
  %15 = call i32 @task_tgid_vnr(i32 %14)
  %16 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %7, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = call i32 (...) @current_uid()
  %18 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %7, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @do_send_specific(i32 %19, i32 %20, i32 %21, %struct.siginfo* %7)
  ret i32 %22
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @task_tgid_vnr(i32) #2

declare dso_local i32 @current_uid(...) #2

declare dso_local i32 @do_send_specific(i32, i32, i32, %struct.siginfo*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
