; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_plugin_proc.c_proc_main.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_plugin_proc.c_proc_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_module = type { i8*, i32, i64, i32*, i32, i32 (i32, i32)* }
%struct.TYPE_2__ = type { i32 }

@proc_main_cleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"plugin:proc\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"netdata server resources\00", align 1
@CONFIG_BOOLEAN_YES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"/proc/pagetypeinfo\00", align 1
@CONFIG_BOOLEAN_NO = common dso_local global i32 0, align 4
@proc_modules = common dso_local global %struct.proc_module* null, align 8
@localhost = common dso_local global %struct.TYPE_2__* null, align 8
@USEC_PER_SEC = common dso_local global i32 0, align 4
@netdata_exit = common dso_local global i32 0, align 4
@D_PROCNETDEV_LOOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"PROC calling %s.\00", align 1
@proc_main.st = internal global i32* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"netdata\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"plugin_proc_modules\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"NetData Proc Plugin Modules Durations\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"milliseconds/run\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@RRDSET_TYPE_STACKED = common dso_local global i32 0, align 4
@RRD_ALGORITHM_ABSOLUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proc_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc_module*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.proc_module*, align 8
  %12 = alloca %struct.proc_module*, align 8
  %13 = alloca %struct.proc_module*, align 8
  store i8* %0, i8** %2, align 8
  %14 = load i32, i32* @proc_main_cleanup, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @netdata_thread_cleanup_push(i32 %14, i8* %15)
  %17 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %18 = call i8* @config_get_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @CONFIG_BOOLEAN_NO, align 4
  %21 = call i8* @config_get_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %47, %1
  %23 = load %struct.proc_module*, %struct.proc_module** @proc_modules, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %23, i64 %25
  %27 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %22
  %31 = load %struct.proc_module*, %struct.proc_module** @proc_modules, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %31, i64 %33
  store %struct.proc_module* %34, %struct.proc_module** %5, align 8
  %35 = load %struct.proc_module*, %struct.proc_module** %5, align 8
  %36 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* @CONFIG_BOOLEAN_YES, align 4
  %39 = call i8* @config_get_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.proc_module*, %struct.proc_module** %5, align 8
  %42 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.proc_module*, %struct.proc_module** %5, align 8
  %44 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.proc_module*, %struct.proc_module** %5, align 8
  %46 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %45, i32 0, i32 3
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localhost, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @USEC_PER_SEC, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %6, align 4
  %56 = call i32 @heartbeat_init(i32* %7)
  store i64 0, i64* %8, align 8
  br label %57

57:                                               ; preds = %234, %50
  %58 = load i32, i32* @netdata_exit, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br i1 %60, label %61, label %235

61:                                               ; preds = %57
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @heartbeat_next(i32* %7, i32 %65)
  store i32 %66, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %67 = load i32, i32* @netdata_exit, align 4
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %235

71:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %131, %71
  %73 = load %struct.proc_module*, %struct.proc_module** @proc_modules, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %73, i64 %75
  %77 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %134

80:                                               ; preds = %72
  %81 = load %struct.proc_module*, %struct.proc_module** @proc_modules, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %81, i64 %83
  store %struct.proc_module* %84, %struct.proc_module** %11, align 8
  %85 = load %struct.proc_module*, %struct.proc_module** %11, align 8
  %86 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  br label %131

94:                                               ; preds = %80
  %95 = load i32, i32* @D_PROCNETDEV_LOOP, align 4
  %96 = load %struct.proc_module*, %struct.proc_module** %11, align 8
  %97 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @debug(i32 %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  %100 = load %struct.proc_module*, %struct.proc_module** %11, align 8
  %101 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %100, i32 0, i32 5
  %102 = load i32 (i32, i32)*, i32 (i32, i32)** %101, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localhost, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 %102(i32 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = load %struct.proc_module*, %struct.proc_module** %11, align 8
  %112 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = call i32 @heartbeat_monotonic_dt_to_now_usec(i32* %7)
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = load %struct.proc_module*, %struct.proc_module** %11, align 8
  %118 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.proc_module*, %struct.proc_module** %11, align 8
  %120 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* @netdata_exit, align 4
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %94
  br label %134

130:                                              ; preds = %94
  br label %131

131:                                              ; preds = %130, %93
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  br label %72

134:                                              ; preds = %129, %72
  %135 = load i32, i32* %3, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %234

137:                                              ; preds = %134
  %138 = load i32*, i32** @proc_main.st, align 8
  %139 = icmp ne i32* %138, null
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i64 @unlikely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %190

144:                                              ; preds = %137
  %145 = call i32* @rrdset_find_bytype_localhost(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32* %145, i32** @proc_main.st, align 8
  %146 = load i32*, i32** @proc_main.st, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %189, label %148

148:                                              ; preds = %144
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localhost, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @RRDSET_TYPE_STACKED, align 4
  %153 = call i32* @rrdset_create_localhost(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 132001, i32 %151, i32 %152)
  store i32* %153, i32** @proc_main.st, align 8
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %185, %148
  %155 = load %struct.proc_module*, %struct.proc_module** @proc_modules, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %155, i64 %157
  %159 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %188

162:                                              ; preds = %154
  %163 = load %struct.proc_module*, %struct.proc_module** @proc_modules, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %163, i64 %165
  store %struct.proc_module* %166, %struct.proc_module** %12, align 8
  %167 = load %struct.proc_module*, %struct.proc_module** %12, align 8
  %168 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i64 @unlikely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %162
  br label %185

176:                                              ; preds = %162
  %177 = load i32*, i32** @proc_main.st, align 8
  %178 = load %struct.proc_module*, %struct.proc_module** %12, align 8
  %179 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @RRD_ALGORITHM_ABSOLUTE, align 4
  %182 = call i32* @rrddim_add(i32* %177, i32 %180, i32* null, i32 1, i32 1000, i32 %181)
  %183 = load %struct.proc_module*, %struct.proc_module** %12, align 8
  %184 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %183, i32 0, i32 3
  store i32* %182, i32** %184, align 8
  br label %185

185:                                              ; preds = %176, %175
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %4, align 4
  br label %154

188:                                              ; preds = %154
  br label %189

189:                                              ; preds = %188, %144
  br label %193

190:                                              ; preds = %137
  %191 = load i32*, i32** @proc_main.st, align 8
  %192 = call i32 @rrdset_next(i32* %191)
  br label %193

193:                                              ; preds = %190, %189
  store i32 0, i32* %4, align 4
  br label %194

194:                                              ; preds = %226, %193
  %195 = load %struct.proc_module*, %struct.proc_module** @proc_modules, align 8
  %196 = load i32, i32* %4, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %195, i64 %197
  %199 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %229

202:                                              ; preds = %194
  %203 = load %struct.proc_module*, %struct.proc_module** @proc_modules, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %203, i64 %205
  store %struct.proc_module* %206, %struct.proc_module** %13, align 8
  %207 = load %struct.proc_module*, %struct.proc_module** %13, align 8
  %208 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = call i64 @unlikely(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %202
  br label %226

216:                                              ; preds = %202
  %217 = load i32*, i32** @proc_main.st, align 8
  %218 = load %struct.proc_module*, %struct.proc_module** %13, align 8
  %219 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %218, i32 0, i32 3
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.proc_module*, %struct.proc_module** %13, align 8
  %222 = getelementptr inbounds %struct.proc_module, %struct.proc_module* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = call i32 @rrddim_set_by_pointer(i32* %217, i32* %220, i32 %224)
  br label %226

226:                                              ; preds = %216, %215
  %227 = load i32, i32* %4, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %4, align 4
  br label %194

229:                                              ; preds = %194
  %230 = load i32*, i32** @proc_main.st, align 8
  %231 = call i32 @rrdset_done(i32* %230)
  %232 = call i32 (...) @global_statistics_charts()
  %233 = call i32 (...) @registry_statistics()
  br label %234

234:                                              ; preds = %229, %134
  br label %57

235:                                              ; preds = %70, %57
  %236 = call i32 @netdata_thread_cleanup_pop(i32 1)
  ret i8* null
}

declare dso_local i32 @netdata_thread_cleanup_push(i32, i8*) #1

declare dso_local i8* @config_get_boolean(i8*, i8*, i32) #1

declare dso_local i32 @heartbeat_init(i32*) #1

declare dso_local i32 @heartbeat_next(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local i32 @heartbeat_monotonic_dt_to_now_usec(i32*) #1

declare dso_local i32* @rrdset_find_bytype_localhost(i8*, i8*) #1

declare dso_local i32* @rrdset_create_localhost(i8*, i8*, i32*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32* @rrddim_add(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rrdset_next(i32*) #1

declare dso_local i32 @rrddim_set_by_pointer(i32*, i32*, i32) #1

declare dso_local i32 @rrdset_done(i32*) #1

declare dso_local i32 @global_statistics_charts(...) #1

declare dso_local i32 @registry_statistics(...) #1

declare dso_local i32 @netdata_thread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
