; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_close_filed.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_close_filed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filed = type { i32, i32, i32, i32* }

@F_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filed*)* @close_filed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_filed(%struct.filed* %0) #0 {
  %2 = alloca %struct.filed*, align 8
  store %struct.filed* %0, %struct.filed** %2, align 8
  %3 = load %struct.filed*, %struct.filed** %2, align 8
  %4 = icmp eq %struct.filed* %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load %struct.filed*, %struct.filed** %2, align 8
  %7 = getelementptr inbounds %struct.filed, %struct.filed* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %5, %1
  br label %42

11:                                               ; preds = %5
  %12 = load %struct.filed*, %struct.filed** %2, align 8
  %13 = getelementptr inbounds %struct.filed, %struct.filed* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %35 [
    i32 130, label %15
    i32 131, label %28
    i32 128, label %28
    i32 132, label %28
    i32 129, label %32
  ]

15:                                               ; preds = %11
  %16 = load %struct.filed*, %struct.filed** %2, align 8
  %17 = getelementptr inbounds %struct.filed, %struct.filed* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.filed*, %struct.filed** %2, align 8
  %22 = getelementptr inbounds %struct.filed, %struct.filed* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @freeaddrinfo(i32* %23)
  %25 = load %struct.filed*, %struct.filed** %2, align 8
  %26 = getelementptr inbounds %struct.filed, %struct.filed* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %20, %15
  br label %28

28:                                               ; preds = %11, %11, %11, %27
  %29 = load i32, i32* @F_UNUSED, align 4
  %30 = load %struct.filed*, %struct.filed** %2, align 8
  %31 = getelementptr inbounds %struct.filed, %struct.filed* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %35

32:                                               ; preds = %11
  %33 = load %struct.filed*, %struct.filed** %2, align 8
  %34 = getelementptr inbounds %struct.filed, %struct.filed* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %11, %32, %28
  %36 = load %struct.filed*, %struct.filed** %2, align 8
  %37 = getelementptr inbounds %struct.filed, %struct.filed* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @close(i32 %38)
  %40 = load %struct.filed*, %struct.filed** %2, align 8
  %41 = getelementptr inbounds %struct.filed, %struct.filed* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 8
  br label %42

42:                                               ; preds = %35, %10
  ret void
}

declare dso_local i32 @freeaddrinfo(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
