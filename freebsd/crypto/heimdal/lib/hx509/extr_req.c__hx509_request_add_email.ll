; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_req.c__hx509_request_add_email.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_req.c__hx509_request_add_email.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@choice_GeneralName_rfc822Name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_request_add_email(i32 %0, %struct.TYPE_10__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 @memset(%struct.TYPE_11__* %7, i32 0, i32 12)
  %9 = load i32, i32* @choice_GeneralName_rfc822Name, align 4
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @rk_UNCONST(i8* %11)
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = call i32 @add_GeneralNames(i32* %22, %struct.TYPE_11__* %7)
  ret i32 %23
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @rk_UNCONST(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @add_GeneralNames(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
