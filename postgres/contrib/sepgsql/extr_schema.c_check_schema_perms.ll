; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_schema.c_check_schema_perms.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_schema.c_check_schema_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@NamespaceRelationId = common dso_local global i32 0, align 4
@SEPG_CLASS_DB_SCHEMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @check_schema_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_schema_perms(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @NamespaceRelationId, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = call i8* @getObjectIdentity(%struct.TYPE_4__* %7)
  store i8* %15, i8** %8, align 8
  %16 = load i32, i32* @SEPG_CLASS_DB_SCHEMA, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @sepgsql_avc_check_perms(%struct.TYPE_4__* %7, i32 %16, i32 %17, i8* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @pfree(i8* %21)
  %23 = load i32, i32* %9, align 4
  ret i32 %23
}

declare dso_local i8* @getObjectIdentity(%struct.TYPE_4__*) #1

declare dso_local i32 @sepgsql_avc_check_perms(%struct.TYPE_4__*, i32, i32, i8*, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
