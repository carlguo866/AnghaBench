; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_append_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_append_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_data = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c". IN DS \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xml_data*)* @xml_append_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_append_ds(%struct.xml_data* %0) #0 {
  %2 = alloca %struct.xml_data*, align 8
  store %struct.xml_data* %0, %struct.xml_data** %2, align 8
  %3 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %4 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @xml_append_str(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %8 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %11 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @xml_append_bio(i32 %9, i32 %12)
  %14 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %15 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @xml_append_str(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %19 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %22 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @xml_append_bio(i32 %20, i32 %23)
  %25 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %26 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xml_append_str(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %30 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %33 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @xml_append_bio(i32 %31, i32 %34)
  %36 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %37 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @xml_append_str(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %41 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %44 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @xml_append_bio(i32 %42, i32 %45)
  %47 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %48 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @xml_append_str(i32 %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.xml_data*, %struct.xml_data** %2, align 8
  %52 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  ret void
}

declare dso_local i32 @xml_append_str(i32, i8*) #1

declare dso_local i32 @xml_append_bio(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
