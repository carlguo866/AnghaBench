; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_raw_usrreq.c_raw_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_raw_usrreq.c_raw_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.sockproto = type { i32 }
%struct.sockaddr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raw_input(%struct.mbuf* %0, %struct.sockproto* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.sockproto*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store %struct.sockproto* %1, %struct.sockproto** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %8 = load %struct.sockproto*, %struct.sockproto** %5, align 8
  %9 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  call void @raw_input_ext(%struct.mbuf* %7, %struct.sockproto* %8, %struct.sockaddr* %9, i32* null)
  ret void
}

declare dso_local void @raw_input_ext(%struct.mbuf*, %struct.sockproto*, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
