; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_search_state_decref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_search_state_decref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.search_state = type { %struct.search_state*, %struct.search_state*, i32 }
%struct.search_domain = type { %struct.search_domain*, %struct.search_domain*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.search_state*)* @search_state_decref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_state_decref(%struct.search_state* %0) #0 {
  %2 = alloca %struct.search_state*, align 8
  %3 = alloca %struct.search_domain*, align 8
  %4 = alloca %struct.search_domain*, align 8
  store %struct.search_state* %0, %struct.search_state** %2, align 8
  %5 = load %struct.search_state*, %struct.search_state** %2, align 8
  %6 = icmp ne %struct.search_state* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load %struct.search_state*, %struct.search_state** %2, align 8
  %10 = getelementptr inbounds %struct.search_state, %struct.search_state* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 8
  %13 = load %struct.search_state*, %struct.search_state** %2, align 8
  %14 = getelementptr inbounds %struct.search_state, %struct.search_state* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %8
  %18 = load %struct.search_state*, %struct.search_state** %2, align 8
  %19 = getelementptr inbounds %struct.search_state, %struct.search_state* %18, i32 0, i32 1
  %20 = load %struct.search_state*, %struct.search_state** %19, align 8
  %21 = bitcast %struct.search_state* %20 to %struct.search_domain*
  store %struct.search_domain* %21, %struct.search_domain** %4, align 8
  br label %22

22:                                               ; preds = %32, %17
  %23 = load %struct.search_domain*, %struct.search_domain** %4, align 8
  %24 = icmp ne %struct.search_domain* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load %struct.search_domain*, %struct.search_domain** %4, align 8
  %27 = getelementptr inbounds %struct.search_domain, %struct.search_domain* %26, i32 0, i32 0
  %28 = load %struct.search_domain*, %struct.search_domain** %27, align 8
  store %struct.search_domain* %28, %struct.search_domain** %3, align 8
  %29 = load %struct.search_domain*, %struct.search_domain** %4, align 8
  %30 = bitcast %struct.search_domain* %29 to %struct.search_state*
  %31 = call i32 @mm_free(%struct.search_state* %30)
  br label %32

32:                                               ; preds = %25
  %33 = load %struct.search_domain*, %struct.search_domain** %3, align 8
  store %struct.search_domain* %33, %struct.search_domain** %4, align 8
  br label %22

34:                                               ; preds = %22
  %35 = load %struct.search_state*, %struct.search_state** %2, align 8
  %36 = call i32 @mm_free(%struct.search_state* %35)
  br label %37

37:                                               ; preds = %7, %34, %8
  ret void
}

declare dso_local i32 @mm_free(%struct.search_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
