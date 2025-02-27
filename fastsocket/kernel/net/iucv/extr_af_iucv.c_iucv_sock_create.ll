; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_iucv_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i32, i32*, i32 }
%struct.sock = type { i32 }

@PF_IUCV = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@iucv_sock_ops = common dso_local global i32 0, align 4
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @iucv_sock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_sock_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PF_IUCV, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EPROTONOSUPPORT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %49

20:                                               ; preds = %13, %4
  %21 = load i32, i32* @SS_UNCONNECTED, align 4
  %22 = load %struct.socket*, %struct.socket** %7, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.socket*, %struct.socket** %7, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %33 [
    i32 128, label %27
    i32 129, label %30
  ]

27:                                               ; preds = %20
  %28 = load %struct.socket*, %struct.socket** %7, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 1
  store i32* @iucv_sock_ops, i32** %29, align 8
  br label %36

30:                                               ; preds = %20
  %31 = load %struct.socket*, %struct.socket** %7, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 1
  store i32* @iucv_sock_ops, i32** %32, align 8
  br label %36

33:                                               ; preds = %20
  %34 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %49

36:                                               ; preds = %30, %27
  %37 = load %struct.socket*, %struct.socket** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.sock* @iucv_sock_alloc(%struct.socket* %37, i32 %38, i32 %39)
  store %struct.sock* %40, %struct.sock** %10, align 8
  %41 = load %struct.sock*, %struct.sock** %10, align 8
  %42 = icmp ne %struct.sock* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %49

46:                                               ; preds = %36
  %47 = load %struct.sock*, %struct.sock** %10, align 8
  %48 = call i32 @iucv_sock_init(%struct.sock* %47, i32* null)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %43, %33, %17
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.sock* @iucv_sock_alloc(%struct.socket*, i32, i32) #1

declare dso_local i32 @iucv_sock_init(%struct.sock*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
