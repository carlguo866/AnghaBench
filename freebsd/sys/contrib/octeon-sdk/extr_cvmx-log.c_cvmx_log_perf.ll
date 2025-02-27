; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-log.c_cvmx_log_perf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-log.c_cvmx_log_perf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_LOG_TYPE_PERF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cvmx_log_perf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 asm "dmfc0 $0, $$25, 1\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %5, i32* %3, align 4
  %6 = call i32 asm "dmfc0 $0, $$25, 3\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i32 %6, i32* %4, align 4
  %7 = call i32 asm "mfc0 $0, $$25, 0\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  store i32 %7, i32* %1, align 4
  %8 = call i32 asm "mfc0 $0, $$25, 2\0A", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @CVMX_LOG_TYPE_PERF, align 4
  %10 = call i32 @__cvmx_log_build_header(i32 %9, i32 3)
  %11 = call i32 @__cvmx_log_write(i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = shl i32 %12, 32
  %14 = load i32, i32* %2, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @__cvmx_log_write(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @__cvmx_log_write(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @__cvmx_log_write(i32 %19)
  ret void
}

declare dso_local i32 @__cvmx_log_write(i32) #1

declare dso_local i32 @__cvmx_log_build_header(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 385}
!3 = !{i32 431}
!4 = !{i32 477}
!5 = !{i32 525}
