; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_request_find_from_trans_id.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_request_find_from_trans_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.request*, i32 }
%struct.evdns_base = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.evdns_base*, i32)* @request_find_from_trans_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @request_find_from_trans_id(%struct.evdns_base* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.evdns_base*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.request*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.request* @REQ_HEAD(%struct.evdns_base* %8, i32 %9)
  store %struct.request* %10, %struct.request** %6, align 8
  %11 = load %struct.request*, %struct.request** %6, align 8
  store %struct.request* %11, %struct.request** %7, align 8
  %12 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %13 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %12)
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = icmp ne %struct.request* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %29, %16
  %18 = load %struct.request*, %struct.request** %6, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.request*, %struct.request** %6, align 8
  store %struct.request* %24, %struct.request** %3, align 8
  br label %35

25:                                               ; preds = %17
  %26 = load %struct.request*, %struct.request** %6, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 0
  %28 = load %struct.request*, %struct.request** %27, align 8
  store %struct.request* %28, %struct.request** %6, align 8
  br label %29

29:                                               ; preds = %25
  %30 = load %struct.request*, %struct.request** %6, align 8
  %31 = load %struct.request*, %struct.request** %7, align 8
  %32 = icmp ne %struct.request* %30, %31
  br i1 %32, label %17, label %33

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %2
  store %struct.request* null, %struct.request** %3, align 8
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.request*, %struct.request** %3, align 8
  ret %struct.request* %36
}

declare dso_local %struct.request* @REQ_HEAD(%struct.evdns_base*, i32) #1

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
