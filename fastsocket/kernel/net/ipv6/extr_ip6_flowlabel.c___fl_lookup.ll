; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c___fl_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c___fl_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_flowlabel = type { i64, %struct.net*, %struct.ip6_flowlabel* }
%struct.net = type { i32 }

@fl_ht = common dso_local global %struct.ip6_flowlabel** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip6_flowlabel* (%struct.net*, i64)* @__fl_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip6_flowlabel* @__fl_lookup(%struct.net* %0, i64 %1) #0 {
  %3 = alloca %struct.ip6_flowlabel*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ip6_flowlabel*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ip6_flowlabel**, %struct.ip6_flowlabel*** @fl_ht, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i64 @FL_HASH(i64 %8)
  %10 = getelementptr inbounds %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %7, i64 %9
  %11 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %10, align 8
  store %struct.ip6_flowlabel* %11, %struct.ip6_flowlabel** %6, align 8
  br label %12

12:                                               ; preds = %30, %2
  %13 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %14 = icmp ne %struct.ip6_flowlabel* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %17 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %23 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %22, i32 0, i32 1
  %24 = load %struct.net*, %struct.net** %23, align 8
  %25 = load %struct.net*, %struct.net** %4, align 8
  %26 = icmp eq %struct.net* %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  store %struct.ip6_flowlabel* %28, %struct.ip6_flowlabel** %3, align 8
  br label %35

29:                                               ; preds = %21, %15
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %6, align 8
  %32 = getelementptr inbounds %struct.ip6_flowlabel, %struct.ip6_flowlabel* %31, i32 0, i32 2
  %33 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %32, align 8
  store %struct.ip6_flowlabel* %33, %struct.ip6_flowlabel** %6, align 8
  br label %12

34:                                               ; preds = %12
  store %struct.ip6_flowlabel* null, %struct.ip6_flowlabel** %3, align 8
  br label %35

35:                                               ; preds = %34, %27
  %36 = load %struct.ip6_flowlabel*, %struct.ip6_flowlabel** %3, align 8
  ret %struct.ip6_flowlabel* %36
}

declare dso_local i64 @FL_HASH(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
