; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_mod.c_LibAliasAttachHandlers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_mod.c_LibAliasAttachHandlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_handler = type { i64 }

@NODIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LibAliasAttachHandlers(%struct.proto_handler* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proto_handler*, align 8
  %4 = alloca i32, align 4
  store %struct.proto_handler* %0, %struct.proto_handler** %3, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load %struct.proto_handler*, %struct.proto_handler** %3, align 8
  %7 = getelementptr inbounds %struct.proto_handler, %struct.proto_handler* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NODIR, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = load %struct.proto_handler*, %struct.proto_handler** %3, align 8
  %13 = call i32 @attach_handler(%struct.proto_handler* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %11
  %19 = load %struct.proto_handler*, %struct.proto_handler** %3, align 8
  %20 = getelementptr inbounds %struct.proto_handler, %struct.proto_handler* %19, i32 1
  store %struct.proto_handler* %20, %struct.proto_handler** %3, align 8
  br label %5

21:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @attach_handler(%struct.proto_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
