; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/tests/extr_addrmerge_test.c_getifaddrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/tests/extr_addrmerge_test.c_getifaddrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32 }

@mock_ifaddrs = common dso_local global %struct.ifaddrs* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getifaddrs(%struct.ifaddrs** %0) #0 {
  %2 = alloca %struct.ifaddrs**, align 8
  store %struct.ifaddrs** %0, %struct.ifaddrs*** %2, align 8
  %3 = load %struct.ifaddrs*, %struct.ifaddrs** @mock_ifaddrs, align 8
  %4 = load %struct.ifaddrs**, %struct.ifaddrs*** %2, align 8
  store %struct.ifaddrs* %3, %struct.ifaddrs** %4, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
