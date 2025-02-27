; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_listen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_usrreq.c_unp_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unpcb = type { i32, i32 }

@UNP_HAVEPCCACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unpcb*, i32)* @unp_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unp_listen(%struct.unpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.unpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.unpcb* %0, %struct.unpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @kauth_cred_proc_ref(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %10 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %9, i32 0, i32 1
  %11 = call i32 @cru2x(i32 %8, i32* %10)
  %12 = call i32 @kauth_cred_unref(i32* %5)
  %13 = load i32, i32* @UNP_HAVEPCCACHED, align 4
  %14 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %15 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  ret i32 0
}

declare dso_local i32 @kauth_cred_proc_ref(i32) #1

declare dso_local i32 @cru2x(i32, i32*) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
