; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_sa_rawaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_sa_rawaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sockaddr*, i32*)* @sa_rawaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sa_rawaddr(%struct.sockaddr* %0, i32* %1) #0 {
  %3 = alloca %struct.sockaddr*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %8 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %20 [
    i32 129, label %10
    i32 128, label %15
  ]

10:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %11 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %12 = bitcast %struct.sockaddr* %11 to %struct.sockaddr_in*
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %5, align 8
  br label %21

15:                                               ; preds = %2
  store i32 4, i32* %6, align 4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %3, align 8
  %17 = bitcast %struct.sockaddr* %16 to %struct.sockaddr_in6*
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to i8*
  store i8* %19, i8** %5, align 8
  br label %21

20:                                               ; preds = %2
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %15, %10
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %4, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i8*, i8** %5, align 8
  ret i8* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
