; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_generic.c_uaddr2taddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_rpc_generic.c_uaddr2taddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netbuf = type { i32 }
%struct.netconfig = type { i32 }
%struct.__rpc_sockinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netbuf* @uaddr2taddr(%struct.netconfig* %0, i8* %1) #0 {
  %3 = alloca %struct.netbuf*, align 8
  %4 = alloca %struct.netconfig*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__rpc_sockinfo, align 4
  store %struct.netconfig* %0, %struct.netconfig** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.netconfig*, %struct.netconfig** %4, align 8
  %8 = call i32 @__rpc_nconf2sockinfo(%struct.netconfig* %7, %struct.__rpc_sockinfo* %6)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.netbuf* null, %struct.netbuf** %3, align 8
  br label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.__rpc_sockinfo, %struct.__rpc_sockinfo* %6, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call %struct.netbuf* @__rpc_uaddr2taddr_af(i32 %13, i8* %14)
  store %struct.netbuf* %15, %struct.netbuf** %3, align 8
  br label %16

16:                                               ; preds = %11, %10
  %17 = load %struct.netbuf*, %struct.netbuf** %3, align 8
  ret %struct.netbuf* %17
}

declare dso_local i32 @__rpc_nconf2sockinfo(%struct.netconfig*, %struct.__rpc_sockinfo*) #1

declare dso_local %struct.netbuf* @__rpc_uaddr2taddr_af(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
