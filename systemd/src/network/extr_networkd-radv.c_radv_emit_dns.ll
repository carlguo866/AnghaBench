; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-radv.c_radv_emit_dns.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-radv.c_radv_emit_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Could not set RA DNS: %m\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not set RA Domains: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radv_emit_dns(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = call %struct.TYPE_10__* @manager_find_uplink(i32 %7, %struct.TYPE_10__* %8)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i32 @radv_set_dns(%struct.TYPE_10__* %10, %struct.TYPE_10__* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @log_link_warning_errno(%struct.TYPE_10__* %16, i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call i32 @radv_set_domains(%struct.TYPE_10__* %20, %struct.TYPE_10__* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @log_link_warning_errno(%struct.TYPE_10__* %26, i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %19
  ret i32 0
}

declare dso_local %struct.TYPE_10__* @manager_find_uplink(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @radv_set_dns(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @log_link_warning_errno(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @radv_set_domains(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
