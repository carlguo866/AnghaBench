; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_interrupt.c_vlc_sendto_i11e.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_interrupt.c_vlc_sendto_i11e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.iovec = type { i8*, i64 }
%struct.msghdr = type { i32, %struct.iovec*, i32, %struct.sockaddr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_sendto_i11e(i32 %0, i8* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iovec, align 8
  %14 = alloca %struct.msghdr, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 1
  store %struct.iovec* %13, %struct.iovec** %20, align 8
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 2
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 3
  %24 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  store %struct.sockaddr* %24, %struct.sockaddr** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @vlc_sendmsg_i11e(i32 %25, %struct.msghdr* %14, i32 %26)
  ret i32 %27
}

declare dso_local i32 @vlc_sendmsg_i11e(i32, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
