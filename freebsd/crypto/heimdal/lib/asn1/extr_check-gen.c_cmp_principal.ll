; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_cmp_principal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_check-gen.c_cmp_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@realm = common dso_local global i32 0, align 4
@name = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_principal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_principal(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = load i32, i32* @realm, align 4
  %15 = call i32 @COMPARE_STRING(%struct.TYPE_13__* %12, %struct.TYPE_13__* %13, i32 %14)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @name, i32 0, i32 1), align 8
  %19 = call i32 @COMPARE_INTEGER(%struct.TYPE_13__* %16, %struct.TYPE_13__* %17, i32 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @name, i32 0, i32 0, i32 1), align 8
  %23 = call i32 @COMPARE_INTEGER(%struct.TYPE_13__* %20, %struct.TYPE_13__* %21, i32 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %41, %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @name, i32 0, i32 0, i32 0), align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @COMPARE_STRING(%struct.TYPE_13__* %33, %struct.TYPE_13__* %34, i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %24

44:                                               ; preds = %24
  ret i32 0
}

declare dso_local i32 @COMPARE_STRING(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @COMPARE_INTEGER(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
