; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_query_new_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_packet.c_ldns_pkt_query_new_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@LDNS_SECTION_QUESTION = common dso_local global i32 0, align 4
@LDNS_SECTION_AUTHORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, i32, i32, i32, i32*)* @ldns_pkt_query_new_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @ldns_pkt_query_new_internal(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = call %struct.TYPE_7__* (...) @ldns_pkt_new()
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %12, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %68

18:                                               ; preds = %5
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @ldns_pkt_set_flags(%struct.TYPE_7__* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %68

24:                                               ; preds = %18
  %25 = call i32* (...) @ldns_rr_new()
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = call i32 @ldns_pkt_free(%struct.TYPE_7__* %29)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %68

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32*, i32** %13, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @ldns_rr_set_owner(i32* %42, i32* %43)
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @ldns_rr_set_type(i32* %45, i32 %46)
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ldns_rr_set_class(i32* %48, i32 %49)
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @ldns_rr_set_question(i32* %51, i32 1)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = load i32, i32* @LDNS_SECTION_QUESTION, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @ldns_pkt_push_rr(%struct.TYPE_7__* %53, i32 %54, i32* %55)
  %57 = load i32*, i32** %11, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %41
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = load i32, i32* @LDNS_SECTION_AUTHORITY, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @ldns_pkt_push_rr(%struct.TYPE_7__* %60, i32 %61, i32* %62)
  br label %64

64:                                               ; preds = %59, %41
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %6, align 8
  br label %68

68:                                               ; preds = %64, %28, %23, %17
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %69
}

declare dso_local %struct.TYPE_7__* @ldns_pkt_new(...) #1

declare dso_local i32 @ldns_pkt_set_flags(%struct.TYPE_7__*, i32) #1

declare dso_local i32* @ldns_rr_new(...) #1

declare dso_local i32 @ldns_pkt_free(%struct.TYPE_7__*) #1

declare dso_local i32 @ldns_rr_set_owner(i32*, i32*) #1

declare dso_local i32 @ldns_rr_set_type(i32*, i32) #1

declare dso_local i32 @ldns_rr_set_class(i32*, i32) #1

declare dso_local i32 @ldns_rr_set_question(i32*, i32) #1

declare dso_local i32 @ldns_pkt_push_rr(%struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
