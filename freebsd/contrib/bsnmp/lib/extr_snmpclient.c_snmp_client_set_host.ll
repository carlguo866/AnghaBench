; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_client_set_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_client_set_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_client = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_client_set_host(%struct.snmp_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.snmp_client* %0, %struct.snmp_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.snmp_client*, %struct.snmp_client** %4, align 8
  %11 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.snmp_client*, %struct.snmp_client** %4, align 8
  %16 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @free(i8* %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.snmp_client*, %struct.snmp_client** %4, align 8
  %21 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %20, i32 0, i32 0
  store i8* null, i8** %21, align 8
  br label %46

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = add nsw i64 %24, 1
  %26 = call i8* @malloc(i64 %25)
  store i8* %26, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %47

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcpy(i8* %30, i8* %31)
  %33 = load %struct.snmp_client*, %struct.snmp_client** %4, align 8
  %34 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.snmp_client*, %struct.snmp_client** %4, align 8
  %39 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @free(i8* %40)
  br label %42

42:                                               ; preds = %37, %29
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.snmp_client*, %struct.snmp_client** %4, align 8
  %45 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %19
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
