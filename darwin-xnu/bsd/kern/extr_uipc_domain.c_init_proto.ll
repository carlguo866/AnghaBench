; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_init_proto.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_domain.c_init_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protosw = type { i32, i32 (%struct.protosw*, %struct.domain*)*, i32 }
%struct.domain = type opaque
%struct.domain.0 = type { i32 }

@PR_ATTACHED = common dso_local global i32 0, align 4
@PR_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.protosw*, %struct.domain.0*)* @init_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_proto(%struct.protosw* %0, %struct.domain.0* %1) #0 {
  %3 = alloca %struct.protosw*, align 8
  %4 = alloca %struct.domain.0*, align 8
  store %struct.protosw* %0, %struct.protosw** %3, align 8
  store %struct.domain.0* %1, %struct.domain.0** %4, align 8
  %5 = load %struct.protosw*, %struct.protosw** %3, align 8
  %6 = getelementptr inbounds %struct.protosw, %struct.protosw* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @PR_ATTACHED, align 4
  %9 = and i32 %7, %8
  %10 = call i32 @VERIFY(i32 %9)
  %11 = load %struct.protosw*, %struct.protosw** %3, align 8
  %12 = getelementptr inbounds %struct.protosw, %struct.protosw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PR_INITIALIZED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %2
  %18 = load %struct.protosw*, %struct.protosw** %3, align 8
  %19 = getelementptr inbounds %struct.protosw, %struct.protosw* %18, i32 0, i32 2
  %20 = call i32 @TAILQ_INIT(i32* %19)
  %21 = load %struct.protosw*, %struct.protosw** %3, align 8
  %22 = getelementptr inbounds %struct.protosw, %struct.protosw* %21, i32 0, i32 1
  %23 = load i32 (%struct.protosw*, %struct.domain*)*, i32 (%struct.protosw*, %struct.domain*)** %22, align 8
  %24 = icmp ne i32 (%struct.protosw*, %struct.domain*)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.protosw*, %struct.protosw** %3, align 8
  %27 = getelementptr inbounds %struct.protosw, %struct.protosw* %26, i32 0, i32 1
  %28 = load i32 (%struct.protosw*, %struct.domain*)*, i32 (%struct.protosw*, %struct.domain*)** %27, align 8
  %29 = load %struct.protosw*, %struct.protosw** %3, align 8
  %30 = load %struct.domain.0*, %struct.domain.0** %4, align 8
  %31 = bitcast %struct.domain.0* %30 to %struct.domain*
  %32 = call i32 %28(%struct.protosw* %29, %struct.domain* %31)
  br label %33

33:                                               ; preds = %25, %17
  %34 = load i32, i32* @PR_INITIALIZED, align 4
  %35 = load %struct.protosw*, %struct.protosw** %3, align 8
  %36 = getelementptr inbounds %struct.protosw, %struct.protosw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %2
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
