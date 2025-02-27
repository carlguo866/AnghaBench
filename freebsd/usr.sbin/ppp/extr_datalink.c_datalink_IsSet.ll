; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_IsSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_datalink.c_datalink_IsSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdescriptor = type { i32 }
%struct.datalink = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdescriptor*, i32*)* @datalink_IsSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datalink_IsSet(%struct.fdescriptor* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fdescriptor*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.datalink*, align 8
  store %struct.fdescriptor* %0, %struct.fdescriptor** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.fdescriptor*, %struct.fdescriptor** %4, align 8
  %8 = call %struct.datalink* @descriptor2datalink(%struct.fdescriptor* %7)
  store %struct.datalink* %8, %struct.datalink** %6, align 8
  %9 = load %struct.datalink*, %struct.datalink** %6, align 8
  %10 = getelementptr inbounds %struct.datalink, %struct.datalink* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %36 [
    i32 136, label %12
    i32 129, label %12
    i32 134, label %13
    i32 135, label %13
    i32 131, label %13
    i32 132, label %13
    i32 128, label %19
    i32 133, label %19
    i32 138, label %19
    i32 137, label %19
    i32 130, label %19
  ]

12:                                               ; preds = %2, %2
  br label %36

13:                                               ; preds = %2, %2, %2, %2
  %14 = load %struct.datalink*, %struct.datalink** %6, align 8
  %15 = getelementptr inbounds %struct.datalink, %struct.datalink* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @descriptor_IsSet(i32* %16, i32* %17)
  store i32 %18, i32* %3, align 4
  br label %37

19:                                               ; preds = %2, %2, %2, %2, %2
  %20 = load %struct.datalink*, %struct.datalink** %6, align 8
  %21 = getelementptr inbounds %struct.datalink, %struct.datalink* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @descriptor_IsSet(i32* %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %34

27:                                               ; preds = %19
  %28 = load %struct.datalink*, %struct.datalink** %6, align 8
  %29 = getelementptr inbounds %struct.datalink, %struct.datalink* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @descriptor_IsSet(i32* %31, i32* %32)
  br label %34

34:                                               ; preds = %27, %26
  %35 = phi i32 [ 1, %26 ], [ %33, %27 ]
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %2, %12
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %34, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.datalink* @descriptor2datalink(%struct.fdescriptor*) #1

declare dso_local i32 @descriptor_IsSet(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
