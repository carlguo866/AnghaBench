; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/audit/extr_network.c_assign_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/audit/extr_network.c_assign_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SERVER_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr_un*)* @assign_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_address(%struct.sockaddr_un* %0) #0 {
  %2 = alloca %struct.sockaddr_un*, align 8
  store %struct.sockaddr_un* %0, %struct.sockaddr_un** %2, align 8
  %3 = load %struct.sockaddr_un*, %struct.sockaddr_un** %2, align 8
  %4 = call i32 @memset(%struct.sockaddr_un* %3, i32 0, i32 8)
  %5 = load i32, i32* @AF_UNIX, align 4
  %6 = load %struct.sockaddr_un*, %struct.sockaddr_un** %2, align 8
  %7 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load %struct.sockaddr_un*, %struct.sockaddr_un** %2, align 8
  %9 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SERVER_PATH, align 4
  %12 = call i32 @strcpy(i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
