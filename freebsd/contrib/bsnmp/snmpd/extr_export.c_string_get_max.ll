; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_export.c_string_get_max.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_export.c_string_get_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i64 }

@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@SNMP_ERR_RES_UNAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_get_max(%struct.snmp_value* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snmp_value*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %14 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %18 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %21, i32* %5, align 4
  br label %68

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @strlen(i32* %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %9, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = call i32* @malloc(i64 %38)
  %40 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %41 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32* %39, i32** %43, align 8
  %44 = icmp eq i32* %39, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %47 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @SNMP_ERR_RES_UNAVAIL, align 4
  store i32 %50, i32* %5, align 4
  br label %68

51:                                               ; preds = %36
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %55 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i64 %53, i64* %57, align 8
  %58 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %59 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = call i32 @memcpy(i32* %62, i32* %63, i64 %65)
  %67 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %51, %45, %12
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
