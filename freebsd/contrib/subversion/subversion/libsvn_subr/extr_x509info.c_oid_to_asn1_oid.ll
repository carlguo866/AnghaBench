; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509info.c_oid_to_asn1_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509info.c_oid_to_asn1_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@asn1_oids = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*, i64)* @oid_to_asn1_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @oid_to_asn1_oid(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @asn1_oids, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %6, align 8
  br label %8

8:                                                ; preds = %30, %2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @memcmp(i8* %20, i64 %23, i64 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %3, align 8
  br label %34

29:                                               ; preds = %19, %13
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 1
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %6, align 8
  br label %8

33:                                               ; preds = %8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %35
}

declare dso_local i64 @memcmp(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
