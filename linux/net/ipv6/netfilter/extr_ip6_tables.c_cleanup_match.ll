; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_cleanup_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6_tables.c_cleanup_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_entry_match = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 (%struct.xt_mtdtor_param*)* }
%struct.xt_mtdtor_param = type { %struct.TYPE_6__*, i32, i32, %struct.net* }
%struct.net = type { i32 }

@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_entry_match*, %struct.net*)* @cleanup_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_match(%struct.xt_entry_match* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.xt_entry_match*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.xt_mtdtor_param, align 8
  store %struct.xt_entry_match* %0, %struct.xt_entry_match** %3, align 8
  store %struct.net* %1, %struct.net** %4, align 8
  %6 = load %struct.net*, %struct.net** %4, align 8
  %7 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %5, i32 0, i32 3
  store %struct.net* %6, %struct.net** %7, align 8
  %8 = load %struct.xt_entry_match*, %struct.xt_entry_match** %3, align 8
  %9 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %5, i32 0, i32 0
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %13, align 8
  %14 = load %struct.xt_entry_match*, %struct.xt_entry_match** %3, align 8
  %15 = getelementptr inbounds %struct.xt_entry_match, %struct.xt_entry_match* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %5, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @NFPROTO_IPV6, align 4
  %19 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %5, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32 (%struct.xt_mtdtor_param*)*, i32 (%struct.xt_mtdtor_param*)** %22, align 8
  %24 = icmp ne i32 (%struct.xt_mtdtor_param*)* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %5, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32 (%struct.xt_mtdtor_param*)*, i32 (%struct.xt_mtdtor_param*)** %28, align 8
  %30 = call i32 %29(%struct.xt_mtdtor_param* %5)
  br label %31

31:                                               ; preds = %25, %2
  %32 = getelementptr inbounds %struct.xt_mtdtor_param, %struct.xt_mtdtor_param* %5, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @module_put(i32 %35)
  ret void
}

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
