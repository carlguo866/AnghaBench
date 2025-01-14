; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_sk_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_sk_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgmt_pending_cmd = type { i32* }
%struct.cmd_lookup = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgmt_pending_cmd*, i8*)* @sk_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sk_lookup(%struct.mgmt_pending_cmd* %0, i8* %1) #0 {
  %3 = alloca %struct.mgmt_pending_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cmd_lookup*, align 8
  store %struct.mgmt_pending_cmd* %0, %struct.mgmt_pending_cmd** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.cmd_lookup*
  store %struct.cmd_lookup* %7, %struct.cmd_lookup** %5, align 8
  %8 = load %struct.cmd_lookup*, %struct.cmd_lookup** %5, align 8
  %9 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.cmd_lookup*, %struct.cmd_lookup** %5, align 8
  %17 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.cmd_lookup*, %struct.cmd_lookup** %5, align 8
  %19 = getelementptr inbounds %struct.cmd_lookup, %struct.cmd_lookup* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @sock_hold(i32* %20)
  br label %22

22:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @sock_hold(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
