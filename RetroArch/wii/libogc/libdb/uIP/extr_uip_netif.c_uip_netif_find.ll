; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_netif.c_uip_netif_find.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_netif.c_uip_netif_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_netif = type { i8, i8*, %struct.uip_netif* }

@uip_netif_list = common dso_local global %struct.uip_netif* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uip_netif* @uip_netif_find(i8* %0) #0 {
  %2 = alloca %struct.uip_netif*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.uip_netif*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.uip_netif* null, %struct.uip_netif** %2, align 8
  br label %60

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 2
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = sub nsw i32 %13, 48
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %4, align 1
  %16 = load %struct.uip_netif*, %struct.uip_netif** @uip_netif_list, align 8
  store %struct.uip_netif* %16, %struct.uip_netif** %5, align 8
  br label %17

17:                                               ; preds = %55, %9
  %18 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %19 = icmp ne %struct.uip_netif* %18, null
  br i1 %19, label %20, label %59

20:                                               ; preds = %17
  %21 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %22 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 8
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* %4, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %20
  %29 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %30 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %28
  %41 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %42 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  store %struct.uip_netif* %53, %struct.uip_netif** %2, align 8
  br label %60

54:                                               ; preds = %40, %28, %20
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.uip_netif*, %struct.uip_netif** %5, align 8
  %57 = getelementptr inbounds %struct.uip_netif, %struct.uip_netif* %56, i32 0, i32 2
  %58 = load %struct.uip_netif*, %struct.uip_netif** %57, align 8
  store %struct.uip_netif* %58, %struct.uip_netif** %5, align 8
  br label %17

59:                                               ; preds = %17
  store %struct.uip_netif* null, %struct.uip_netif** %2, align 8
  br label %60

60:                                               ; preds = %59, %52, %8
  %61 = load %struct.uip_netif*, %struct.uip_netif** %2, align 8
  ret %struct.uip_netif* %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
