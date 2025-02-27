; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6_joingroup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_mcast.c_in6_joingroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_multi_mship = type { i32 }
%struct.ifnet = type { i32 }
%struct.in6_addr = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.in6_multi_mship* @in6_joingroup(%struct.ifnet* %0, %struct.in6_addr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.in6_multi_mship*, align 8
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6_multi_mship*, align 8
  %11 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = call %struct.in6_multi_mship* @in6_multi_mship_alloc(i32 %13)
  store %struct.in6_multi_mship* %14, %struct.in6_multi_mship** %10, align 8
  %15 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %10, align 8
  %16 = icmp eq %struct.in6_multi_mship* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOBUFS, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  store %struct.in6_multi_mship* null, %struct.in6_multi_mship** %5, align 8
  br label %36

20:                                               ; preds = %4
  %21 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %22 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %23 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %10, align 8
  %24 = getelementptr inbounds %struct.in6_multi_mship, %struct.in6_multi_mship* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @in6_mc_join(%struct.ifnet* %21, %struct.in6_addr* %22, i32* null, i32* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %10, align 8
  %33 = call i32 @in6_multi_mship_free(%struct.in6_multi_mship* %32)
  store %struct.in6_multi_mship* null, %struct.in6_multi_mship** %5, align 8
  br label %36

34:                                               ; preds = %20
  %35 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %10, align 8
  store %struct.in6_multi_mship* %35, %struct.in6_multi_mship** %5, align 8
  br label %36

36:                                               ; preds = %34, %29, %17
  %37 = load %struct.in6_multi_mship*, %struct.in6_multi_mship** %5, align 8
  ret %struct.in6_multi_mship* %37
}

declare dso_local %struct.in6_multi_mship* @in6_multi_mship_alloc(i32) #1

declare dso_local i32 @in6_mc_join(%struct.ifnet*, %struct.in6_addr*, i32*, i32*, i32) #1

declare dso_local i32 @in6_multi_mship_free(%struct.in6_multi_mship*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
