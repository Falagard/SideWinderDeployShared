package deploy;

import deploy.DeployModels;
import hx.injection.Service;

interface IReleaseService extends Service {
	@post("/api/projects/:projectId/releases")
	public function createRelease(release:Release):Release;
	@get("/api/projects/:projectId/releases")
	public function listReleases(projectId:Int):Array<Release>;
	@get("/api/releases/:id")
	public function getRelease(id:Int):Null<Release>;
}
