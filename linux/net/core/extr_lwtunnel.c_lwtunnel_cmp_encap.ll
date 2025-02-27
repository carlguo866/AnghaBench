; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_cmp_encap.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtunnel_cmp_encap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwtunnel_state = type { i64 }
%struct.lwtunnel_encap_ops = type { i32 (%struct.lwtunnel_state*, %struct.lwtunnel_state*)* }

@LWTUNNEL_ENCAP_NONE = common dso_local global i64 0, align 8
@LWTUNNEL_ENCAP_MAX = common dso_local global i64 0, align 8
@lwtun_encaps = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwtunnel_cmp_encap(%struct.lwtunnel_state* %0, %struct.lwtunnel_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lwtunnel_state*, align 8
  %5 = alloca %struct.lwtunnel_state*, align 8
  %6 = alloca %struct.lwtunnel_encap_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.lwtunnel_state* %0, %struct.lwtunnel_state** %4, align 8
  store %struct.lwtunnel_state* %1, %struct.lwtunnel_state** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %4, align 8
  %9 = icmp ne %struct.lwtunnel_state* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %5, align 8
  %12 = icmp ne %struct.lwtunnel_state* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %74

14:                                               ; preds = %10, %2
  %15 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %4, align 8
  %16 = icmp ne %struct.lwtunnel_state* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %5, align 8
  %19 = icmp ne %struct.lwtunnel_state* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %14
  store i32 1, i32* %3, align 4
  br label %74

21:                                               ; preds = %17
  %22 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %4, align 8
  %23 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %5, align 8
  %26 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %74

30:                                               ; preds = %21
  %31 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %4, align 8
  %32 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LWTUNNEL_ENCAP_NONE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %4, align 8
  %38 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LWTUNNEL_ENCAP_MAX, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %30
  store i32 0, i32* %3, align 4
  br label %74

43:                                               ; preds = %36
  %44 = call i32 (...) @rcu_read_lock()
  %45 = load i32*, i32** @lwtun_encaps, align 8
  %46 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %4, align 8
  %47 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.lwtunnel_encap_ops* @rcu_dereference(i32 %50)
  store %struct.lwtunnel_encap_ops* %51, %struct.lwtunnel_encap_ops** %6, align 8
  %52 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %6, align 8
  %53 = icmp ne %struct.lwtunnel_encap_ops* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %6, align 8
  %56 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %55, i32 0, i32 0
  %57 = load i32 (%struct.lwtunnel_state*, %struct.lwtunnel_state*)*, i32 (%struct.lwtunnel_state*, %struct.lwtunnel_state*)** %56, align 8
  %58 = icmp ne i32 (%struct.lwtunnel_state*, %struct.lwtunnel_state*)* %57, null
  br label %59

59:                                               ; preds = %54, %43
  %60 = phi i1 [ false, %43 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i64 @likely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %6, align 8
  %66 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %65, i32 0, i32 0
  %67 = load i32 (%struct.lwtunnel_state*, %struct.lwtunnel_state*)*, i32 (%struct.lwtunnel_state*, %struct.lwtunnel_state*)** %66, align 8
  %68 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %4, align 8
  %69 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %5, align 8
  %70 = call i32 %67(%struct.lwtunnel_state* %68, %struct.lwtunnel_state* %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %64, %59
  %72 = call i32 (...) @rcu_read_unlock()
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %42, %29, %20, %13
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.lwtunnel_encap_ops* @rcu_dereference(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
