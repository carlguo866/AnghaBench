; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ngtype_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_ngtype_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ng_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @ngtype_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngtype_unload(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = add i64 %8, 4
  %10 = call i8* @malloc(i64 %9)
  store i8* %10, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 3
  %18 = load i32*, i32** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @strncpy(i8* %17, i32* %18, i64 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 3
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @kldfind(i8* %25)
  store i32 %26, i32* %7, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @free(i8* %29)
  store i32 -1, i32* %3, align 4
  br label %36

31:                                               ; preds = %13
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @kldunload(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %28, %12
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i32*, i64) #1

declare dso_local i32 @kldfind(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @kldunload(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
