; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_disassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"EXPIRE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"old_\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"alias_\00", align 1
@S_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @disassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disassoc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.interface_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.interface_info*
  store %struct.interface_info* %5, %struct.interface_info** %3, align 8
  %6 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %7 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = call i32 @script_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  %14 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %15 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @script_write_params(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %21 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %12
  %27 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %28 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @script_write_params(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %31)
  br label %33

33:                                               ; preds = %26, %12
  %34 = call i32 (...) @script_go()
  br label %35

35:                                               ; preds = %33, %1
  %36 = load i32, i32* @S_INIT, align 4
  %37 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %38 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  ret void
}

declare dso_local i32 @script_init(i8*, i32*) #1

declare dso_local i32 @script_write_params(i8*, i32*) #1

declare dso_local i32 @script_go(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
